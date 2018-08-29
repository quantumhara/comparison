import numpy as np

pi=3.14159265358979323

n=10000

seed=1
const=48271
denom=2.0**31.0-1.0

incir=0.0
for i in range(1-1, n+1, 1):
    for j in range(1-1, n+1, 1):
        seed=(const*seed)%denom
        ran_f=seed/denom

        coords1=ran_f
        coords2=ran_f
        slength=np.sqrt(coords1*coords1+coords2*coords2)

        if slength<=1:
            incir=incir+1

farea=4.0*incir/(n*n)

print("farea= ", farea, "pi= ", pi, "error= ", farea-pi)
