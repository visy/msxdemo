MIF package 2.1, coded in December 2013 by Louthrax
====================================================

Thanks to sd_snatcher for his support and suggestions. 

MIF is a set of tools to convert images to MSX format.

It features: 

* Support for all MSX 1 up to MSX 2+ graphical screen modes.
* Interlaced mode support. 
* Real-time preview of parameter changes (using MIFui).
* Error diffusion (dithering). 
* Optimized palette generation.
* Control on details level when generating palette ("Details enhancement" parameter). 
* Horizontal shift to reduce artefacts in screen 2, 10 and 12. 
* Optimized RGB to YJKJ conversion, allowing to "reconstruct" SCC 
images from PNG snapshots. 
* Manual palette optimization. 


Contents of the package:

* mif.exe   : The Win32 command line version of the tool.
* mifui.exe : The GUI tool. Allows real-time preview of parameters change.
* msxbasic  : This folder contains loader for all types of generated *.SC? files.
* msxdos    : This folder contains the MSX-DOS viewer mifview.com, along with its sources.
* palettes  : This folder contains interesting sample-palettes, in GIMP format.
* samples   : MIF pictures of Vampire Killer in all screen modes.


Controls in MIFui:

* [Alt]+[Enter] or double-click switches full screen mode. 
* [Right], [Down], [Space] or mouse wheel down displays the next image 
in current directory. 
* [Left], [Up] or mouse wheel up displays the previous image in current 
directory. 
* Click on the main window to set the pointed color to the custom 
palette current index. 
* Right-click on the main window to set the custom palette current index 
to the pointer color. 
* [Control]+click on a custom palette color to switch it with previously 
selected color. 
To use MIFui as a MSX images viewer only, set the "Convert to" setting 
to PNG. 


Look at the tooltips in the "Settings" dialog for more information. 

