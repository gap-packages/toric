LoadPackage("toric");
dir := DirectoriesPackageLibrary("toric", "tst");
TestDirectory(dir, rec(exitGAP := true));

FORCE_QUIT_GAP(1);
