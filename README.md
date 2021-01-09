Experiment to auto-generate C++ classes based on GDTF Schema
============================================================

Play with GDTF, using xsdcxx and xerces to generate C++ code
from the ```gdtf.xsd``` provided Schema file.


### TODO

It kind of works :)

If you get this error, it's because the namespace is not defined...
```
/home/hip/dev/gdtf-cxx/testdiablo.xml:3:3 error: no declaration found for element 'GDTF'
```

To make it work, the GDTF description.xml GDTF node should look like this: 
```
<GDTF DataVersion="1.0" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:t="http://schemas.gdtf-share.com/device" 
  xmlns="http://schemas.gdtf-share.com/device"
  xsi:schemaLocation="http://schemas.gdtf-share.com/device gdtf-libraries/gdtf.xsd" 
 >
```


### setup

To get going, for ubuntu install depends...

```
$ sudo apt update

# install xerces (https://xerces.apache.org/index.html) and xsdcxx (https://linux.die.net/man/1/xsdcxx)
$ sudo apt install Xerces-C++ xsdcxx  

$ git clone https://github.com/hippyau/gdtf-cxx.git 

$ cd gdtf-cxx

# you can get the gdtf.xsd from https://gitlab.com/petrvanek/gdtf-libraries
$ git clone https://gitlab.com/petrvanek/gdtf-libraries.git

$ chmod +x *.sh

```

### usage

```

# generate (or overwrite) C++ classes from the gdtf.xsd file in the submodule 
$ ./gen.sh

# compile example printer parser
$ ./compile.sh
```

I got a GDTF file, extracted a description.xml and renamed it testdiablo.xml.
I then had to edit the xml to include the namespace in the gdtf.xsd file: 

```
 <GDTF DataVersion="1.0" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://schemas.gdtf-share.com/device gdtf-libraries/gdtf.xsd" 
  xmlns:t="http://schemas.gdtf-share.com/device" 
  xmlns="http://schemas.gdtf-share.com/device"
 >
```

and could then run the example printer... until it had an error :) 

```

# run the printer example
$ ./impl ./testdiablo.xml

```

which produced...
```
dataversion: 1
Description: Classical 3 Series - GDTF in progress
guidtype: DCE7AA4F-2147-4B6A-9607-15A09D692A6F
LongName: Diablo
Manufacturer: Ayrton
nametype: Diablo
guidtype: 
ShortName: Diablo
Thumbnail: Diablo GDTF
Name: PanTilt
Name: ColorRGB
Name: Gobo1
Name: Gobo1Pos
Name: AnimationWheel1
Name: Prism
Name: Shaper
Name: Position
Pretty: Position
Name: PanTilt
Name: Control
Pretty: Control
Name: Control
Name: Beam
Pretty: Beam
Name: Beam
Name: Dimmer
Pretty: Dimmer
Name: Dimmer
Name: Focus
Pretty: Focus
Name: Focus
Name: Color
Pretty: Color
Name: Color
Name: RGB
Name: Gobo
Pretty: Gobo
Name: Gobo
Name: Shapers
Pretty: Shapers
Name: Shapers
ActivationGroup: PanTilt
Feature: Position.PanTilt
AttributeEnum: Pan
PhysicalUnitEnum: Angle
Pretty: P
ActivationGroup: PanTilt
Feature: Position.PanTilt
AttributeEnum: Tilt
PhysicalUnitEnum: Angle
Pretty: T
Feature: Control.Control
AttributeEnum: PositionMSpeed
PhysicalUnitEnum: None
Pretty: Pos MSpeed
Feature: Control.Control
AttributeEnum: BlackoutMode
PhysicalUnitEnum: None
Pretty: Blackout Mode
Feature: Control.Control
AttributeEnum: NoFeature
PhysicalUnitEnum: None
Pretty: NoFeature
Feature: Beam.Beam
AttributeEnum: Shutter1
PhysicalUnitEnum: None
Pretty: Sh1
Feature: Beam.Beam
MainAttribute: Shutter1
AttributeEnum: Shutter1Strobe
PhysicalUnitEnum: Frequency
Pretty: Strobe1
Feature: Beam.Beam
MainAttribute: Shutter1
AttributeEnum: Shutter1StrobePulse
PhysicalUnitEnum: Frequency
Pretty: Pulse1
Feature: Beam.Beam
MainAttribute: Shutter1
AttributeEnum: Shutter1StrobeRandom
PhysicalUnitEnum: Frequency
Pretty: Random1
Feature: Dimmer.Dimmer
AttributeEnum: Dimmer
PhysicalUnitEnum: LuminousIntensity
Pretty: Dim
Feature: Focus.Focus
AttributeEnum: Zoom
PhysicalUnitEnum: Angle
Pretty: Zoom
Feature: Focus.Focus
AttributeEnum: Focus1
PhysicalUnitEnum: None
Pretty: Focus1
Feature: Focus.Focus
AttributeEnum: Focus1Distance
PhysicalUnitEnum: Length
Pretty: Focus1 Distance
Feature: Focus.Focus
AttributeEnum: Focus1Adjust
PhysicalUnitEnum: None
Pretty: Focus1 Adjust
ActivationGroup: ColorRGB
Feature: Color.Color
AttributeEnum: Color1
PhysicalUnitEnum: None
Pretty: C1
ActivationGroup: ColorRGB
Feature: Color.Color
MainAttribute: Color1
AttributeEnum: Color1WheelSpin
PhysicalUnitEnum: AngularSpeed
Pretty: Wheel Spin
ActivationGroup: ColorRGB
Feature: Color.RGB
AttributeEnum: ColorSub_C
PhysicalUnitEnum: ColorComponent
Pretty: C
ActivationGroup: ColorRGB
Feature: Color.RGB
AttributeEnum: ColorSub_M
PhysicalUnitEnum: ColorComponent
Pretty: M
ActivationGroup: ColorRGB
Feature: Color.RGB
AttributeEnum: ColorSub_Y
PhysicalUnitEnum: ColorComponent
Pretty: Y
Feature: Color.Color
AttributeEnum: CTO
PhysicalUnitEnum: None
Pretty: CTO
ActivationGroup: Gobo1
Feature: Gobo.Gobo
AttributeEnum: Gobo1
PhysicalUnitEnum: None
Pretty: G1
ActivationGroup: Gobo1
Feature: Gobo.Gobo
MainAttribute: Gobo1
AttributeEnum: Gobo1SelectShake
PhysicalUnitEnum: Frequency
Pretty: Select Shake
ActivationGroup: Gobo1
Feature: Gobo.Gobo
MainAttribute: Gobo1
AttributeEnum: Gobo1WheelSpin
PhysicalUnitEnum: AngularSpeed
Pretty: Wheel Spin
ActivationGroup: Gobo1Pos
Feature: Gobo.Gobo
AttributeEnum: Gobo1Pos
PhysicalUnitEnum: Angle
Pretty: G1 <>
ActivationGroup: Gobo1Pos
Feature: Gobo.Gobo
MainAttribute: Gobo1Pos
AttributeEnum: Gobo1PosRotate
PhysicalUnitEnum: AngularSpeed
Pretty: Rotate
ActivationGroup: AnimationWheel1
Feature: Gobo.Gobo
AttributeEnum: AnimationWheel1
PhysicalUnitEnum: None
Pretty: Anim1
testdiablo.xml:76:193 error: value 'AnimationWheelSpin' not in enumeration

```



