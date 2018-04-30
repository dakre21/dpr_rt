"""
Author: David Akre
Description: Helper python script to run benchmarks
"""

import time
import subprocess
import glob
import pandas as pd

def prog(results, bit_files, latency):
  """
  Function: prog is a helper function that will program the FPGA iteratively
  and capture timing results and relay them to a csv
  """
  # Forward declaraions
  files     = []
  jitter    = []
  treconfig = []
  iters     = 10

  for f in bit_files:
    files.append(f)
    tmp = []
    for i in range(iters):
      time_start = time.time()
      subprocess.call("xsdb -eval 'connect; fpga -f %s'" % f,shell=True)
      time_diff = time.time() - time_start
      tmp.append(time_diff)

    total = 0
    for t in tmp:
      total += t - latency

    treconfig.append(total/len(tmp))
    jitter.append(max(tmp) - min(tmp))

  
  # Save results to csv
  # TODO FIX
  df = pd.DataFrame([files, treconfig, jitter], columns=[["Bitstream"], \
          ["Reconfiguration Time (us)"], ["Jitter (us)"]])
  df.to_csv(results)


def main():
  # Forward declarations
  nrt8      = "nrt_8"
  rt8       = "rt_8"
  rt16      = "rt_16"
  time_start = time.time()
  subprocess.call("xsdb -eval 'connect; dow -data test 0x1000000'",shell=True)
  latency = time.time() - time_start

  prog("results_%s.csv" % nrt8, glob.glob(nrt8), latency)
  prog("results_%s.csv" % rt8, glob.glob(rt8), latency)
  prog("results_%s.csv" % rt16, glob.glob(rt16), latency)

  
if __name__ == "__main__":
  main()
