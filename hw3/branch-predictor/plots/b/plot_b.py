import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
# deal 1 bit vs 2 bit
deal_12_2level = [96.51, 96.87, 97.08, 97.21, 97.27, 97.31]
deal_14_2level = [96.76, 97.09, 97.28, 97.39, 97.45, 97.49]
deal_16_2level = [96.97, 97.27, 97.44, 97.54, 97.61, 97.63]

# quantum 1 bit vs 2 bit
quantum_12_2level = [99.72, 99.72, 99.72, 99.72, 99.72, 99.72]
quantum_14_2level = [99.75, 99.75, 99.75, 99.75, 99.75, 99.75]
quantum_16_2level = [99.81, 99.81, 99.81, 99.81, 99.81, 99.81]

size = [128,256, 512, 1024, 2048, 4096]

fig, ax = plt.subplots()
plt.semilogx(size, deal_12_2level, marker = 'o', ms=5, lw=2, label = '12 bits', color = 'crimson')
plt.semilogx(size, deal_14_2level, marker = 's', ms=5, lw=2, label = '14 bits', color='navy')
plt.semilogx(size, deal_16_2level, marker = '^', ms=5, lw=2, label = '16 bits', color='turquoise')
plt.xscale('log',base=2)
plt.xlabel(r'Number of Entries')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('2-level predictor sweeping pattern table size (deal)')
plt.legend()
plt.savefig('b_deal.pdf')
plt.show()
plt.clf()

fig, ax = plt.subplots()
plt.semilogx(size, quantum_12_2level, marker = 'o', ms=5, lw=2, label = '12 bits', color = 'crimson')
plt.semilogx(size, quantum_14_2level, marker = 's', ms=5, lw=2, label = '14 bits', color='navy')
plt.semilogx(size, quantum_16_2level, marker = '^', ms=5, lw=2, label = '16 bits', color='turquoise')
plt.xscale('log',base=2)
plt.xlabel(r'Number of Entries')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('2-level predictor sweeping pattern table size (quantum)')
plt.legend()
plt.savefig('b_quantum.pdf')
plt.show()

