import os
import math
import matplotlib.pyplot as plt

if __name__ == "__main__":
    ################################################################
    ################################################################
    # TODO: insert your recorded values here for peak compute / bw
    # use maximum number of cores per socket
    
    COMPUTE_ROOFLINE_VALUES = [   5.3019/(2**10) + 0.9815*2/(2**10), 2*742.4104/(2**10) + 0.0014/(2**10), 0.0280/(2**10) + 2*0.2129/(2**10)] # use GFLOPS SP
    COMPUTE_ROOFLINE_LABELS = [  "FP_OP_QUANTUM",   "FP_OP_DEAL", "FP_OP_HMMER"]

    MEMORY_ROOFLINE_VALUES = [  0.6055, 2.3883, 0.9046] # use GB/sec
    MEMORY_ROOFLINE_LABELS = [  "quantum",  "deal",  "hmmer"]

    # rename server using `lscpu` command
    SERVER_MODEL = "Intel(R) Xeon(R) CPU E5-2683 v4 @ 2.10GHz" 
    ################################################################
    ################################################################



    ################################################################
    ################################################################
    # do not edit this code
    df_flop = dict(zip(COMPUTE_ROOFLINE_LABELS, COMPUTE_ROOFLINE_VALUES))
    df_bw_method = dict(zip(MEMORY_ROOFLINE_LABELS, MEMORY_ROOFLINE_VALUES))

    
    title_size          = 12
    axtitle_size        = 10
    xlabel_size         = 10
    ylabel_size         = 10
    xtick_size          = 8
    ytick_size          = 8
    legend_size         = 10
    marker_size         = 6
    marker_edge_width   = .8
    large_marker_size   = 8
    small_marker_size   = 6
    dpi                 = 100

    fig, ax = plt.subplots(1, 1, figsize=(5.75, 4.76))

    for i, method_flop in enumerate(COMPUTE_ROOFLINE_LABELS):
        for j, method_mem in enumerate(MEMORY_ROOFLINE_LABELS):
            METHOD_LABEL = method_mem.capitalize()
            peak_gflops = df_flop[method_flop]
            peak_bw_gb = df_bw_method[method_mem]

            x_intersection = peak_gflops / peak_bw_gb

            # plot the roofline model
            ax.plot([0, x_intersection], [0, peak_gflops], color="black")
            ax.plot([x_intersection, 65], [peak_gflops, peak_gflops], color="black")

            if i+1 == len(COMPUTE_ROOFLINE_LABELS):
                corrected_slope = (peak_gflops / 4010) / (x_intersection / 66)             
                ax.text(x_intersection+.6+(.7 if j == 0 else 0)   , peak_gflops-80, METHOD_LABEL, va="top", ha="right", rotation=(math.atan(corrected_slope))/(2*math.pi)*360 +(-5. if j == 0 else 0) , fontsize=xtick_size)

            if j == 0:
                ax.text(65, peak_gflops, method_flop, va="bottom", ha="right", fontsize=xtick_size)


    ax.set_xlabel("Arithmetic Intensity (FLOP/Byte)", fontsize=xlabel_size)
    ax.set_ylabel("Single Precision Throughput (GFLOP/s)", fontsize=ylabel_size)
    ax.set_title(f"{SERVER_MODEL}\nRoofline Model", fontsize=title_size)
    
    plt.tight_layout()
    plt.savefig("./roofline.pdf", dpi=100)
    plt.clf()


