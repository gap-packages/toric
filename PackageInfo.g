#############################################################################
##
#W  PackageInfo.g                toric Package                 David Joyner
##
##

SetPackageInfo( rec(

  PackageName := "toric",
    Subtitle  := "toric varieties and some combinatorial geometry computations",
  Version := "1.8dev",
  Date    := "03/05/2012",

  Persons := [ 
    rec( 
      LastName      := "Joyner",
      FirstNames    := "David",
      IsAuthor      := true,
      IsMaintainer  := true,
      Email         := "wdjoyner@gmail.com",
      WWWHome       := "http://opensourcemath.org/toric/",
      PostalAddress := Concatenation( [
                         "W. David Joyner\n",
                         "Mathematics Department\n",
                         "U. S. Naval Academy\n",
                         "Annapolis, MD 21402\n",
                         "USA" ] ),
      Place         := "Annapolis",
      Institution   := "U. S. Naval Academy"
    )
  ],  

  Status  := "accepted",
  CommunicatedBy 
          := "Gerhard Hiss (Aachen)",
  AcceptDate 
          := "10/2005",


  PackageWWWHome := "http://www.opensourcemath.org/toric/",
  README_URL := Concatenation( ~.PackageWWWHome, "README.toric" ),
  PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
  ArchiveURL := Concatenation( ~.PackageWWWHome, "toric", ~.Version ),
  ArchiveFormats := ".tar.gz",

  AbstractHTML := 
    "<span class=\"pkgname\">toric</span> is a <span class=\"pkgname\">GAP</span>package for computing with toric varieties.",


  PackageDoc := rec(
    BookName  := "toric",
    ArchiveURLSubset := ["doc"],
    HTMLStart := "doc/chap0.html",
    PDFFile   := "doc/manual.pdf",
    SixFile   := "doc/manual.six",
    LongTitle := "toric variety package",
    Autoload := true
  ),

  Dependencies := rec(
    GAP := ">= 4.5",
    NeededOtherPackages := [],
    SuggestedOtherPackages := [],
    ExternalConditions := []
  ),

  AvailabilityTest := ReturnTrue,

  Autoload := false,

  TestFile := "tst/testall.g",

  Keywords := [ "toric variety", "cone", "fan", "Riemann-Roch space" ]

));
