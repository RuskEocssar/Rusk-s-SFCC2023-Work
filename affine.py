#

import numpy as np

x0 = np.array(
    [
        [ 0.5, 0.5, 0.5, 1],
        [ 0.5, 0.5,-0.5, 1],
        [ 0.5,-0.5, 0.5, 1],
        [ 0.5,-0.5,-0.5, 1],
        [-0.5, 0.5, 0.5, 1],
        [-0.5, 0.5,-0.5, 1],
        [-0.5,-0.5, 0.5, 1],
        [-0.5,-0.5,-0.5, 1],
    ]
)

x1 = np.array(
    [
        [ 0.5, 0.5, 0.5, 1],
        [ 0.5, 0.5,-0.5, 1],
        [ 0.5,-0.5, 0.5, 1],
        [ 0.5,-0.5,-0.5, 1],
        [-0.5, 0.5, 0.5, 1],
        [-0.5, 0.5,-0.5, 1],
        [-0.5,-0.5, 0.5, 1],
        [-0.5,-0.5,-0.5, 1],
    ]
)

p0 = np.array([1,1,1])
l0 = np.linalg.norm(p0)
p1 = -p0 /l0
l1 = ((x1[:,0:3]-p0) @ p1).reshape((8,1))
x1[:,0:3] = (x1[:,0:3] -p0) /l1 *l0 +p0

l2 = np.sqrt(p0[0]**2+p0[2]**2)

print(x1)

a = x1.T @ x0 @ np.linalg.inv(x0.T @ x0)
a = a.reshape((16))

print()