import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
# deal 1 bit vs 2 bit
deal_12_2level = [96.51, 96.87, 97.08, 97.21, 97.27, 97.31]
deal_14_2level = [96.76, 97.09, 97.28, 97.39, 97.45, 97.49]
deal_16_2level = [96.97, 97.27, 97.44, 97.54, 97.61, 97.63]

# quantum 1 bit vs 2 bit
quantum_12_2level = [99.73, 99.73, 99.73, 99.73, 99.73, 99.72, 99.72, 99.72, 99.72, 99.72, 99.72]
quantum_14_2level = [99.75, 99.75, 99.75, 99.75, 99.75, 99.75, 99.75, 99.75, 99.75, 99.75, 99.75]
quantum_16_2level = [99.80, 99.80, 99.80, 99.81, 99.81, 99.81, 99.81, 99.81, 99.81, 99.81, 99.81]
 
size_deal = [128,256, 512, 1024, 2048, 4096]
size_quantum = [4, 8, 16, 32, 64, 128,256, 512, 1024, 2048, 4096]

deal_perf = 89.85
quantum_perf = 87.87

fig, ax = plt.subplots()
plt.semilogx(size_deal, deal_12_2level, marker = 'o', ms=5, lw=2, label = '12 bits', color = 'crimson')
plt.semilogx(size_deal, deal_14_2level, marker = 's', ms=5, lw=2, label = '14 bits', color='navy')
plt.semilogx(size_deal, deal_16_2level, marker = '^', ms=5, lw=2, label = '16 bits', color='turquoise')
plt.axhline(y=deal_perf, color='black', linestyle='--', label='perf')
plt.xscale('log',base=2)
plt.xlabel(r'Number of Entries')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('2-level predictor sweeping number of entries (deal)')
plt.legend()
plt.savefig('b_deal_dashed.pdf')
plt.show()
plt.clf()

fig, ax = plt.subplots()
plt.semilogx(size_quantum, quantum_12_2level, marker = 'o', ms=5, lw=2, label = '12 bits', color = 'crimson')
plt.semilogx(size_quantum, quantum_14_2level, marker = 's', ms=5, lw=2, label = '14 bits', color='navy')
plt.semilogx(size_quantum, quantum_16_2level, marker = '^', ms=5, lw=2, label = '16 bits', color='turquoise')
plt.axhline(y=quantum_perf, color='black', linestyle='--', label='perf')
plt.xscale('log',base=2)
plt.xlabel(r'Number of Entries')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('2-level predictor sweeping number of entries (quantum)')
plt.legend()
plt.savefig('b_quantum_dashed.pdf')
plt.show()

