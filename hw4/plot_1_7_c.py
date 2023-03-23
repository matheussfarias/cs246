import matplotlib.pyplot as plt

quantum_misses = [22555910,22484565,22489545,23175119,22485026,22603386,22484951,22485505 ]
hmmer_misses = [170492790,181390932,179432626,172271267,172335559,173861248,177130440,172162802 ]
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
