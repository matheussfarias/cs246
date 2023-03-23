import matplotlib.pyplot as plt

quantum_misses = [, , , ]
likwid_quantum = 
hmmer_misses = [, , , ]
likwid_hmmer = 
associativity = [1,2,3,4,5,6,7,8]

plt.plot(associativity, quantum_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache sweeping number of entries (quantum)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_quantum_direct_victim.pdf")
plt.show()

plt.plot(associativity, hmmer_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache sweeping number of entries (hmmer)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_hmmer_direct_victim.pdf")
plt.show()
