############################################################
#
# commands to create GUAVA documentation using GAPDoc
#
###########################################################


path := Directory("/home/wdj/gapfiles/toric/doc");
main:="toric.xml"; 
files:=[];
bookname:="toric";
#str := ComposedXMLString(path, main, files);;
#r := ParseTreeXMLString(str);; 
######### with break here if there is an xml compiling error #########
#CheckAndCleanGapDocTree(r);
#l := GAPDoc2LaTeX(r);;
#FileString(Filename(path, Concatenation(bookname, ".tex")), l);
MakeGAPDocDoc( path, main, files, bookname);
