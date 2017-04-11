#!/usr/bin/env python                                          
import sys    
import os

# location of folder you want to parse
fname = "/home/rmpadge/job_events/"

# list all of the files in the specified folder
def list_files(path):
  files = []
  for name in os.listdir(path):
    if os.path.isfile(os.path.join(path, name)):
      files.append(path + name)
  return files

# read each line in a file and pass it to wordmap (recursive)
def readline(singlefile):
  with open(singlefile, "r") as ins:
    array = []
    for line in ins:
      wordmap(line)

# split each item in a file delimeted by whatever split() is
def wordmap(oneLine):
    oneLine = oneLine.strip()
    for word in oneLine.split(","):
      if word != "":
        print ('%s\t%s' % (word, 1)) 


if __name__ == "__main__":
  l = list_files(fname)

  for x in l:
    files = readline(x)
    print(files)

