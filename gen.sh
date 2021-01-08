#!/bin/bash

# xsdcxx cxx-tree --std c++11 --guard-prefix %s --cxx-suffix .cpp --hxx-suffix .h --polymorphic-type-all %s

xsdcxx cxx-tree --std c++11 --cxx-suffix .cpp --hxx-suffix .h  gdtf-libraries/gdtf.xsd

#   --generate-test-driver

xsdcxx cxx-parser --std c++11 --cxx-suffix .cpp --hxx-suffix .h --force-overwrite --root-element GDTF --generate-test-driver --generate-print-impl  gdtf-libraries/gdtf.xsd
