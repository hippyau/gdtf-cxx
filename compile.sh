#!/bin/sh

rm ./impl

c++ -o impl gdtf-driver.cpp gdtf-pskel.cpp gdtf-pimpl.cpp -lxerces-c
