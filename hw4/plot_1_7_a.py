import matplotlib.pyplot as plt

quantum_misses = [23432534, 22275632, 22147627, 22144917]
likwid_quantum = 3914195
hmmer_misses = [208096268, 129084848, 47436893, 31246370]
likwid_hmmer = 522380
associativity = [1,2,4,8]

plt.plot(associativity, quantum_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache sweeping Associativity (quantum)")
plt.xlabel("Associativity")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_quantum.pdf")
plt.show()

plt.plot(associativity, hmmer_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache sweeping Associativity (hmmer)")
plt.xlabel("Associativity")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_hmmer.pdf")
plt.show()

plt.plot(associativity, quantum_misses, color = 'crimson', marker='o', label = "pin")
plt.axhline(y=likwid_quantum, color='black', linestyle='--', label = "likwid")
plt.legend()
plt.title("Misses of L1D Cache sweeping Associativity (quantum) compared with likwid")
plt.xlabel("Associativity")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_quantum_likwid.pdf")
plt.show()

plt.plot(associativity, hmmer_misses, color = 'crimson', marker='o', label="pin")
plt.axhline(y=likwid_hmmer, color='black', linestyle='--', label = "likwid")
plt.legend()
plt.title("Misses of L1D Cache sweeping Associativity (hmmer) compared with likwid")
plt.xlabel("Associativity")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_hmmer_likwid.pdf")
plt.show()