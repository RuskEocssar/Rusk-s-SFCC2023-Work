import os
import numpy as np
import quaternion
import transformation as trf

_tpl = (1,2,3,4,5,6,7,8,9,)
_list = list(_tpl)

_list[1] = 40

print(_tpl,_list)