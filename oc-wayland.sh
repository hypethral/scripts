#!/usr/bin/env python
from pynvml import *
nvmlInit()
device = nvmlDeviceGetHandleByIndex(0)
#nvmlDeviceSetGpuLockedClocks(device,300,1695)
nvmlDeviceSetGpcClkVfOffset(device,140)
nvmlDeviceSetMemClkVfOffset(device,400)
