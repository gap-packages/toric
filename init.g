#############################################################################
##
#A  init.g                  toric library                   David Joyner
##
##
##
##
#H  @(#)$Id: init.g,v 1.9 2003/02/27 22:45:16 gap Exp $
##

##
##  Announce the package version and test for the existence of the binary.
##
DeclarePackage( "toric", "1.3",
  function()
    local path;

    if not CompareVersionNumbers( VERSION, "4.3" ) then
        Info( InfoWarning, 1,
              "Package ``toric'': requires at least GAP 4.3" );
        return fail;
    fi;

    # Test for existence of the compiled binary
 #  path := DirectoriesPackagePrograms( "toric" );

    return true;
  end );

DeclarePackageAutoDocumentation( "toric", "doc", "toric varieties package" );

ReadPkg("toric", "lib/util.gd"); 
ReadPkg("toric", "lib/toric.gd"); 

