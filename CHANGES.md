In this file we record the changes since the first release of
the TORIC package.

## 1.9.6 (2024-07-04)

- Fix problems with the Gua05 BibTeX entry
- Fix building the manual on case sensitive file systems
- Minor janitorial changes

## 1.9.5 (2019-10-07)

- Transferred package maintenance to the GAP team
- Minor janitorial changes

## 1.9.4 (2017-03-07)

- Updated the URL of David Joyner's personal homepage

## 1.9.3 (2017-02-06)

- Fixed conflict between tests and some other packages

## 1.9.2 (2017-02-04)

- Fixed various URLs

## 1.9.1 (2017-02-03)

- Fixed license information

## 1.9.0 (2017-02-02)

- Moved package to GitHub
- Added MIT license
- Added a test suite (based on existing examples)
- Removed access to the obsolete global variable `Revision`
- Removed IdealAffineToricVariety -- it returned incorrect
  results and fixing it was non-trivial.

## 1.8 (2012-05-03)

- Minor changes to conform with GAP 4.5

## 1.7 (2011-09-07)

- changed date format to conform with GAP 4.5
- Updated manual (with very minor changes)

## 1.6 (2009-12-26)

- removed mac .* files
- rebuilt manual (pdf and html)

## 1.5 (2009-10-11)

- Changed DeclareGlobalFunction("EulerCharacteristic"); to
  DeclareAttribute( "EulerCharacteristic", IsList ); in toric.gd,
  changed InstallGlobalFunction("EulerCharacteristic"...)
  to InstallMethod("EulerCharacteristic",...) in toric.gi.

## 1.4 (2008-02-26)

- Updated references, minor changes to documentation.

## 1.3 (2006-03-07)

- renamed Star ToricStar to avoid conflict with
  graphgpd package

## 1.2 (2005-10-01)

now accepted as a GAP package
- many changes to the code and manual, as suggested by
  the referee

## 1.1

initial releases (1.0 and 1.1)
