Experiment to auto-generate C++ classes based on GDTF Schema
============================================================

Play with GDTF, using xsdcxx and xerces to generate C++ code
from the ```gdtf.xsd``` provided Schema file.


### TODO

It doesn't work... 
```
testdiablo.xml:2:25 error: no declaration found for element 'GDTF'
```
but there is clearly a GDTF entry in the XML!?!?



### setup

To get going, for ubuntu install depends...

```
$ sudo apt update

# install xerces (https://xerces.apache.org/index.html) and xsdcxx (https://linux.die.net/man/1/xsdcxx)
$ sudo apt install Xerces-C++  xsdcpp  

# you can get the gdtf.xsd from https://gitlab.com/petrvanek/gdtf-libraries
# however, it's included as a submodule, so we can do a recursive clone

$ git clone --recurse-submodules https://github.com/hippyau/gdtf-cxx.git 

$ chmod +x *.sh

```

### usage

```

# generate (or overwrite) C++ classes from the gdtf.xsd file in the submodule 
$ ./gen.sh

# compile example printer parser
$ ./compile.sh

# run the printer example
$ ./impl ./testdiablo.xml

```

