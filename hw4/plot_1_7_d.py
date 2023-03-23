import matplotlib.pyplot as plt

quantum_misses = [22139775,22138986,22139033,22140099,22139775,22140099,22139519,22139748 ]
hmmer_misses = [23243909,22825864,23462725,23017868,22815786,22984328,22935413,23462725 ]
associativity = [1,2,3,4,5,6,7,8]

plt.plot(associativity, quantum_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache-8 sweeping number of entries (quantum)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_quantum_assoc8_victim.pdf")
plt.show()

plt.plot(associativity, hmmer_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache-8 sweeping number of entries (hmmer)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_hmmer_assoc8_victim.pdf")
plt.show()
