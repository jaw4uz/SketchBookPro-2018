#!/bin/sh


# You need to expand the Sketchbook pkg that was copied into /tmp/Autodesk in order to access the adml executable to licences sketchbook

/usr/sbin/pkgutil --expand /tmp/Autodesk/Autodesk_SketchBook_for_Enterprise_2018_Multilingual_MAC_OSX.pkg /tmp/sketchbook2018

# Run the Sketchbook installer pkg

/usr/sbin/installer -dumplog -verbose -pkg /tmp/Autodesk/Autodesk_SketchBook_for_Enterprise_2018_Multilingual_MAC_OSX.pkg -target /


# *note that your using the adlm tool contained in the expanded package folder NOT a version of the tool you may have installed elsewhere.

/tmp/sketchbook2018/sketchbookpro2018.pkg/Scripts/adlmreg -i S 871J1 871J1 2018.0.0.F *YourSerialNumber* /Library/Application\ Support/Autodesk/Adlm/PIT/SketchBookforEnterpriseConfig.pit


# Make sure the dir name after /LGS contains your product key YourProductKey_2018.0.0.F it can change


/bin/mkdir /Library/Application\ Support/Autodesk/CLM/LGS/871J1_2018.0.0.F/
/usr/bin/touch /Library/Application\ Support/Autodesk/CLM/LGS/871J1_2018.0.0.F/LGS.data
/bin/chmod 777 /Library/Application\ Support/Autodesk/CLM/LGS/871J1_2018.0.0.F/LGS.data
/bin/echo "_STANDALONE">>/Library/Application\ Support/Autodesk/CLM/LGS/871J1_2018.0.0.F/LGS.data

# Remove the Maya instller app
/bin/rm -rf /tmp/sketchbook2018
/bin/rm -rf /tmp/Autodesk