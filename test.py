import os
import numpy as np
import quaternion
import transformation as trf

a = 1
r = np.array([0,0,1]) *np.sin(a/2)
q = np.quaternion(np.cos(a/2),r[0],r[1],r[2])

a = np.pi
r = np.array([0,1,0]) *np.sin(a/2)
q = np.quaternion(np.cos(a/2),r[0],r[1],r[2]) *q

a = np.pi/2
r = np.array([1,0,0]) *np.sin(a/2)
q = np.quaternion(np.cos(a/2),r[0],r[1],r[2]) *q

r = q.vec
r /= np.linalg.norm(r)
w = 2 *np.arccos(q.w)

print("[{0: .3f}f,{1: .3f}f,{2: .3f}f],angle:{3: .3f}f".format(r[0],r[1],r[2],w))