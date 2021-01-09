#!/bin/sh

rm ./test

c++ -o test test.cpp gdtf.cpp -lxerces-c
