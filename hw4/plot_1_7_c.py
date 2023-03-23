import matplotlib.pyplot as plt

quantum_misses = [22461341,22238730,22141750,22134209,22133199,22133500,22133071,22132802 ]
hmmer_misses = [181667332,144123366,132270902,102077554,73935216,44876059,36597860,28936293 ]
entries = [1,2,3,4,5,6,7,8]

plt.plot(entries, quantum_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache sweeping number of entries (quantum)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_quantum_direct_victim.pdf")
plt.show()

plt.plot(entries, hmmer_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D Cache sweeping number of entries (hmmer)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D Cache")
plt.plot()
plt.savefig("plots/misses_l1d_hmmer_direct_victim.pdf")
plt.show()
