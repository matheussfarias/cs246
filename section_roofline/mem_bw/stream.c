# include <stdio.h>
# include <unistd.h>
# include <math.h>
# include <float.h>
# include <limits.h>
# include <sys/time.h>
#include <iostream>

#ifndef STREAM_ARRAY_SIZE
#   define STREAM_ARRAY_SIZE	50000000
#endif

#ifndef NTIMES
#   define NTIMES	10
#endif

# define HLINE "-------------------------------------------------------------\n"

# ifndef MIN
# define MIN(x,y) ((x)<(y)?(x):(y))
# endif
# ifndef MAX
# define MAX(x,y) ((x)>(y)?(x):(y))
# endif

#ifndef STREAM_TYPE
#define STREAM_TYPE double
#endif


#ifdef _OPENMP
	extern int omp_get_num_threads();
	extern int omp_get_thread_num();
#endif

static STREAM_TYPE	a[STREAM_ARRAY_SIZE],
					b[STREAM_ARRAY_SIZE],
					c[STREAM_ARRAY_SIZE],
					d[STREAM_ARRAY_SIZE],
					e[48];

static double	avgtime[4] = {0}, maxtime[4] = {0},
		mintime[4] = {FLT_MAX,FLT_MAX,FLT_MAX,FLT_MAX};

static char	*label[4] = {"Load:      ", "Copy:      ",  "Stream:    ", "Triad:     "};

static double	bytes[4] = {
    1 * sizeof(STREAM_TYPE) * STREAM_ARRAY_SIZE,
    2 * sizeof(STREAM_TYPE) * STREAM_ARRAY_SIZE,
    3 * sizeof(STREAM_TYPE) * STREAM_ARRAY_SIZE,
    4 * sizeof(STREAM_TYPE) * STREAM_ARRAY_SIZE
};

extern double mysecond();


int main() {
	printf(HLINE);
    int			quantum;
    int			k;
    ssize_t		j;
    STREAM_TYPE		scalar;
    double		t, times[4][NTIMES];

    ////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////
	// initialize arrays we will use
	#pragma omp parallel for private(j)
    for (j=0; j<STREAM_ARRAY_SIZE; j++) {
	    a[j] = 1.0;
	    b[j] = 2.0;
	    c[j] = 0.0;
		d[j] = 3.0;
	}
	for (j=0; j<48; j++) {
	    e[j] = 1.0;
	}
	////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////



	////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////
	// repeat experiment NTIMES
    scalar = 3.0;
    for (k=0; k<NTIMES; k++){

		// load 
		times[0][k] = mysecond();
		#pragma omp parallel for private(j)
		for (j=0; j<STREAM_ARRAY_SIZE; j+=1){
			// provided because load bandwidth needs to use asm instructions
			// compiler is too smart and will remove unused reads
			asm("mov %%eax, %%ebx;" : : "b" (a[j])); // move contents of ebx to eax  (https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
		}
		times[0][k] = mysecond() - times[0][k];
		
		// copy
		times[1][k] = mysecond();
		#pragma omp parallel for private(j)
		for (j=0; j<STREAM_ARRAY_SIZE; j++){
			// TODO: implement using a and b arrays
			asm("mov %%eax, %%ebx;" : : "b" (b[j]));
			asm("mov %%eax, %%ebx;" : : "a" (a[j]));
			//a[j] = b[j];
		}

		times[1][k] = mysecond() - times[1][k];
		std::cout << a[0];
		std::exit(1);
		// stream
		times[2][k] = mysecond();
		#pragma omp parallel for private(j)
		for (j=0; j<STREAM_ARRAY_SIZE; j++){
			// TODO: implement using a, b, and c arrays
			asm("imul %%eax, %%ecx, %%ebx;" : "a" (scalar): "b" (b[j]));
			asm("add %%eax, %%edx;" : "c" (scalar*b[j]): "d" (c[j]));
			//a[j] = scalar*b[j] + c[j];
		}
		times[2][k] = mysecond() - times[2][k];
		
		// triad
		times[3][k] = mysecond();
		#pragma omp parallel for private(j)
		for (j=0; j<STREAM_ARRAY_SIZE; j++){
			// TODO: implement using a, b, c, and d arrays
			a[j] = b[j]*c[j] + d[j];		
		}
		times[3][k] = mysecond() - times[3][k];
	}
	////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////



	////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////
	// Find best result and write results to file
	// skip first iteration
    for (k=1; k<NTIMES; k++) {
		for (j=0; j<4; j++){
			avgtime[j] = avgtime[j] + times[j][k];
			mintime[j] = MIN(mintime[j], times[j][k]);
			maxtime[j] = MAX(maxtime[j], times[j][k]);
	    }
	}
    
    printf("Function    Best Rate MB/s  Avg time     Min time     Max time\n");
    for (j=0; j<4; j++) {
		avgtime[j] = avgtime[j]/(double)(NTIMES-1);

		printf("%s%12.1f  %11.6f  %11.6f  %11.6f\n", 
			label[j],
	       	1.0E-06 * bytes[j]/mintime[j],
	       	avgtime[j],
	       	mintime[j],
	      	maxtime[j]);
    }
    printf(HLINE);
	////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////

    return 0;
}


#include <sys/time.h>

double mysecond()
{
        struct timeval tp;
        struct timezone tzp;
        int i;

        i = gettimeofday(&tp,&tzp);
        return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
}

