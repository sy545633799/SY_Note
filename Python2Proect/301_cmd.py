
# -*- coding: utf-8 -*-

from gbk2utf8 import convert
import xlrd
import os,sys


def main():
    if len(sys.argv) == 1:
        while True:
            cmd = raw_input("cmd:")     #??
            print(cmd)

if __name__ == '__main__':
	main()
