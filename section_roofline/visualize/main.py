import os
import math
import matplotlib.pyplot as plt

if __name__ == "__main__":
    ################################################################
    ################################################################
    # TODO: insert your recorded values here for peak compute / bw
    # use maximum number of cores per socket
    
    COMPUTE_ROOFLINE_VALUES = [   2400.97] # use GFLOPS SP
    COMPUTE_ROOFLINE_LABELS = [  ""]

    MEMORY_ROOFLINE_VALUES = [  64.16] # use GB/sec
    MEMORY_ROOFLINE_LABELS = [  ""]

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
    ax.set_ylabel("Compute Throughput (GFLOP/s)", fontsize=ylabel_size)
    ax.set_yscale('log')
    ax.set_xscale('log')
    ax.set_title(f"{SERVER_MODEL}\nRoofline Model", fontsize=title_size)
    
    plt.plot(0.007233520, 0.007233520/0.6055, marker="o", markersize=10, color = "crimson", label = "quantum") # quantum
    plt.plot(0.001610147672, 0.001610147672/2.3883, marker="o", markersize=10, color = "blue", label = "dealII") # deal
    plt.plot(0.00440908, 0.007233520/0.9046, marker="o", markersize=10, color = "black", label = "hmmer") # hmmer
    plt.legend()
    plt.tight_layout()
    plt.savefig("./roofline.pdf", dpi=100)
    plt.clf()


