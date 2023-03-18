import matplotlib.pyplot as plt

access_time = [0.253921, 0.380736, 0.6113]
associativity = [1,2,4]

plt.plot(associativity, access_time, color = 'crimson', marker='o')
plt.title("Access time sweeping associativity")
plt.xlabel("Associativity")
plt.ylabel("Access time, ns")
plt.plot()
plt.savefig("cacti.pdf")
plt.show()