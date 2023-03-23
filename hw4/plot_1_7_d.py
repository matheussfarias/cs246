import matplotlib.pyplot as plt

quantum_misses = [22134923,22136567,22135810,22135403,22135208,22135712,22136428,22134951 ]
hmmer_misses = [22746003,19866692,19043377,18805847,18596627,18614989,18670057,18698648 ]
entries = [1,2,3,4,5,6,7,8]

plt.plot(entries, quantum_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D-8 Cache sweeping number of entries (quantum)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D-8 Cache")
plt.plot()
plt.savefig("plots/misses_l1d_quantum_8_victim.pdf")
plt.show()

plt.plot(entries, hmmer_misses, color = 'crimson', marker='o')
plt.title("Misses of L1D-8 Cache sweeping number of entries (hmmer)")
plt.xlabel("Number of Entries")
plt.ylabel("Total Misses of L1D-8 Cache")
plt.plot()
plt.savefig("plots/misses_l1d_hmmer_8_victim.pdf")
plt.show()
