"""
Author: David Akre
Description: Helper python script to run benchmarks
"""

import os
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
      p = subprocess.Popen("xsdb -eval 'connect; fpga -f %s'" % f, shell=True)
      p.wait()
      time_diff = time.time() - time_start
      tmp.append(time_diff)

    total = 0
    for t in tmp:
      total += t - latency

    treconfig.append(total/len(tmp))
    jitter.append(max(tmp) - min(tmp))


  # Save results to csv
  df = pd.DataFrame({
      "Bitstream File" : files,
      "Reconfiguration Time (s)" : treconfig,
      "Jitter (s)" : jitter
      })
  df.to_csv(results)


def main():
  # Forward declarations
  nrt8      = "nrt_8"
  rt8       = "rt_8"
  rt16      = "rt_16"
  time_start = time.time()
  subprocess.call("xsdb -eval 'connect; dow -data test 0x1000000'",shell=True)
  latency = time.time() - time_start

  files = []
  for f in os.listdir(nrt8):
    if f.endswith(".bit"):
      files.append(os.path.join(nrt8, f)) 


  prog("results_%s.csv" % nrt8, files, latency)

  files = []
  for f in os.listdir(rt8):
    if f.endswith(".bit"):
      files.append(os.path.join(rt8, f)) 


  prog("results_%s.csv" % rt8, files, latency)

  files = []
  for f in os.listdir(rt16):
    if f.endswith(".bit"):
      files.append(os.path.join(rt16, f)) 


  prog("results_%s.csv" % rt16, files, latency)

  
if __name__ == "__main__":
  main()
