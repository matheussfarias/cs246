import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
# deal 1 bit vs 2 bit
deal_naive = [76.78, 77.96, 82.01, 82.20, 82.30, 82.35, 82.37]
deal_2bit = [84.14, 85.23, 87.44, 87.62, 87.71, 87.79, 87.81]

# quantum 1 bit vs 2 bit
quantum_naive = [90.49, 90.50, 91.21, 91.22, 91.22, 91.22, 91.22, 91.22, 91.22, 91.22, 91.22, 91.22]
quantum_2bit = [92.67, 92.85, 93.27, 93.25, 93.27, 93.24, 93.24, 93.24, 93.25, 93.25, 93.25, 93.25]
size_deal = [128,256, 512, 1024, 2048, 4096, 8192]
size_quantum = [4, 8, 16, 32, 64, 128,256, 512, 1024, 2048, 4096, 8192]

deal_perf = 89.85
quantum_perf = 87.87

fig, ax = plt.subplots()
plt.semilogx(size_deal, deal_naive, marker = 'o', ms=5, lw=2, label = '1-bit', color = 'crimson')
plt.semilogx(size_deal, deal_2bit, marker = 's', ms=5, lw=2, label = '2-bit', color='navy')
plt.axhline(y=deal_perf, color='black', linestyle='--', label='perf')
plt.xscale('log',base=2)
plt.xlabel(r'Branch Prediction Buffer size')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('1-bit vs 2-bit sweeping branch prediction buffer size (deal)')
plt.legend()
plt.savefig('a_deal_dashed.pdf')
plt.show()
plt.clf()

fig, ax = plt.subplots()
plt.semilogx(size_quantum, quantum_naive, marker = 'o', ms=5, lw=2, label = '1-bit', color = 'crimson')
plt.semilogx(size_quantum, quantum_2bit, marker = 's', ms=5, lw=2, label = '2-bit', color='navy')
plt.axhline(y=quantum_perf, color='black', linestyle='--', label='perf')
plt.xscale('log',base=2)
plt.xlabel(r'Branch Prediction Buffer size')
plt.ylabel(r'Accuracy')
ax = plt.gca()
ax.xaxis.set_major_formatter(mticker.ScalarFormatter())
plt.title('1-bit vs 2-bit sweeping branch prediction buffer size (quantum)')
plt.legend()
plt.savefig('a_quantum_dashed.pdf')
plt.show()

