
Experiment to auto-generate C++ classes based on GDTF Schema
============================================================


To get going, for ubuntu install depends...

```
sudo apt update

# install xerces (https://xerces.apache.org/index.html) and 
# install xsdcxx (https://linux.die.net/man/1/xsdcxx)

sudo apt install Xerces-C++  xsdcpp  

```


```


# get the gdtf.xsd from....
# git clone https://gitlab.com/petrvanek/gdtf-libraries.git

git clone --recurse-submodules https://github.com/hippyau/gdtf-cxx.git 

chmod +x *.sh

# generate C++ from the gdtf.xsd file in gdtf-libraries/ from https://gitlab.com/petrvanek/gdtf-libraries/
./gen.sh

# compile example printer parser
./compile.sh

# run the printer example
./impl ./testdiablo.xml


```


### TODO

It doesn't work... complains 

```
testdiablo.xml:2:25 error: no declaration found for element 'GDTF'
```

but there is clearly a GDTF entry in the XML???
