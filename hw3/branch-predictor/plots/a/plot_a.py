import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
# deal 1 bit vs 2 bit
deal_naive = [76.78, 77.96, 82.01, 82.20, 82.30, 82.35, 82.37]
deal_2bit = [84.14, 85.23, 87.44, 87.62, 87.71, 87.79, 87.81]

# quantum 1 bit vs 2 bit
quantum_naive = [91.22, 91.22, 91.22, 91.22, 91.22, 91.22, 91.22]
quantum_2bit = [93.24, 93.24, 93.24, 93.25, 93.25, 93.25, 93.25]

size = [128,256, 512, 1024, 2048, 4096, 8192]

fig, ax = plt.subplots()
plt.semilogx(size, deal_naive, marker = 'o', ms=5, lw=2, label = '1-bit', color = 'crimson')
plt.semilogx(size, deal_2bit, marker = 's', ms=5, lw=2, label = '2-bit', color='navy')
plt.axhline(y=0.5, color='black', linestyle='-')
plt.show()
plt.xscale('log',base=2)
plt.xlabel(r'Branch Prediction Buffer size')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('1-bit vs 2-bit sweeping branch prediction buffer size (deal)')
plt.legend()
plt.savefig('a_deal.pdf')
plt.show()
plt.clf()

fig, ax = plt.subplots()
plt.semilogx(size, quantum_naive, marker = 'o', ms=5, lw=2, label = '1-bit', color = 'crimson')
plt.semilogx(size, quantum_2bit, marker = 's', ms=5, lw=2, label = '2-bit', color='navy')
plt.xscale('log',base=2)
plt.xlabel(r'Branch Prediction Buffer size')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('1-bit vs 2-bit sweeping branch prediction buffer size (quantum)')
plt.legend()
plt.savefig('a_quantum.pdf')
plt.show()

