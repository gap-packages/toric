#############################################################################
##
#A  read.g                  toric library                David Joyner
##
##  This file is read by GAP upon startup. It installs all functions of
##  the toric library 
##
#H  @(#)$Id: read.g,v 1.5 2003/02/27 22:45:16 gap Exp $
##

#############################################################################
##
#F  Read calls to load all files.  
##
ReadPkg("toric", "lib/util.gi"); 
ReadPkg("toric", "lib/toric.gi"); 

