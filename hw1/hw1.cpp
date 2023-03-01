// Required for using Pin API calls and defined data types
#include "pin.H"

// Standard system library include files
#include <iostream>
#include <fstream>

using std::ofstream;
using std::cout;
using std::cerr;
using std::endl;
using std::string;

// The running count of instructions is kept here
// Your work: You may need more counters for different instruction types...
UINT32 icount = 0;
UINT32 icount_read = 0;
UINT32 icount_write = 0;
UINT32 icount_branch = 0;

KNOB<string> KnobOutFile(KNOB_MODE_WRITEONCE,   "pintool",
        "o", "tool.out", "Output file for the pintool");
ofstream ofile;

// This prints what the Pin Tool does
INT32 Usage()
{
    cerr << "This pin tool counts the number of instructions.\n\n";
    cerr << KNOB_BASE::StringKnobSummary() << endl;

    return -1;
}

// Analysis function:: This function is called before every instruction is executed
// Your work: Extend this analysis or write new Analysis functions...
VOID docount()
{
    icount++;
}

VOID docount_read()
{
    icount_read++;
}

VOID docount_write()
{
    icount_write++;
}

VOID docount_branch()
{
    icount_branch++;
}

// Instrumentation function:: Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    // Insert a call to docount() before every instruction, no arguments (IARGs) are passed
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) docount, IARG_END);
    // Your work: Identify different instruction type and call coresponding Analysis function...
    if (INS_IsMemoryRead(ins)){
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) docount_read, IARG_END);
    }
    else if (INS_IsMemoryWrite(ins)){
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) docount_write, IARG_END);
    }
    else if (INS_IsBranch(ins)){
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) docount_branch, IARG_END);
    }
}

// This function is called whenever the program calls the exit() function
VOID Fini(INT32 code, VOID *v)
{
    ofile << "Total number of instructions executed = " << icount << endl;
    // Your work: Output...
    ofile << "Total number of instructions read executed = " << icount_read << endl;
	ofile << "Total number of instructions write executed = " << icount_write << endl;
	ofile << "Total number of instructions branch executed = " << icount_branch << endl;
	ofile << "Total number of other type instructions executed = " << icount - (icount_read + icount_write + icount_branch) << endl;
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Initialize pin
    if( PIN_Init(argc, argv) )
    {
        return Usage();
    }

    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, 0);

    // Called at the end of the program
    ofile.open(KnobOutFile.Value().c_str());
    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();

    return 0;
}
