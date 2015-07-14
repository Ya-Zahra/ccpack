// to make it easier to find out which version of Delphi we are using
{$IFDEF VER80}
{$DEFINE Delphi1}
{$DEFINE Delphi1_up}
{$ENDIF}

{$IFDEF VER90}
{$DEFINE Delphi2}
{$DEFINE Delphi2_up}
{$ENDIF}

{$IFDEF VER100}
{$DEFINE Delphi3}
{$DEFINE Delphi3_up}
{$ENDIF}

{$IFDEF VER120}
{$DEFINE Delphi4}
{$DEFINE Delphi4_up}
{$ENDIF}

{$IFDEF VER130}
{$DEFINE Delphi5}
{$DEFINE Delphi5_up}
{$ENDIF}

{$IFDEF VER140}
{$DEFINE Delphi6}
{$DEFINE Delphi6_up}
{$ENDIF}

{$IFDEF VER150}
{$DEFINE Delphi7}
{$DEFINE Delphi7_up}
{$ENDIF}

// VER160 was Delphi 8 for .NET only

{$IFDEF VER170}
{$DEFINE Delphi2005}
{$DEFINE Delphi2005_up}
{$ENDIF}

{$IFDEF VER180}
{$DEFINE Delphi2006}
{$DEFINE Delphi2006_up}
{$ENDIF}

{$IFDEF VER185}
{$DEFINE Delphi2007}
{$DEFINE Delphi2007_up}
{$ENDIF}

{$IFDEF VER200}
{$DEFINE Delphi2009}
{$DEFINE Delphi2009_up}
{$ENDIF}

{$IFDEF VER210}
{$DEFINE Delphi2010}
{$DEFINE Delphi2010_up}
{$ENDIF}

{$IFDEF VER220}
{$DEFINE DelphiXE}
{$DEFINE DelphiXE_up}
{$ENDIF}

{$IFDEF VER230}
{$DEFINE DelphiXE2}
{$DEFINE DelphiXE2_up}
{$ENDIF}

{$IFDEF VER240}
{$DEFINE DelphiXE3}
{$DEFINE DelphiXE3_up}
{$ENDIF}

{$IFDEF VER250}
{$DEFINE DelphiXE4}
{$DEFINE DelphiXE4_up}
{$ENDIF}

{$IFDEF VER260}
{$DEFINE DelphiXE5}
{$DEFINE DelphiXE5_up}
{$ENDIF}

//{$IFDEF VER275}
//{$DEFINE APPMETHOD}
//{$ENDIF}

{$IFDEF VER270}
{$DEFINE DelphiXE6}
{$DEFINE DelphiXE6_up}
{$ENDIF}

{$IFDEF VER280}
{$DEFINE DelphiXE7}
{$DEFINE DelphiXE7_up}
{$ENDIF}

{$IFDEF VER290}
{$DEFINE DelphiXE8}
{$DEFINE DelphiXE8_up}
{$ENDIF}

// now add DelphiXx_Up constants for all previous versions based on the highest version found

{$IFDEF DelphiXE8_up}
{$DEFINE DelphiXE7_up}
{$DEFINE DelphiXE7up}
{$ENDIF}

{$IFDEF DelphiXE7_up}
{$DEFINE DelphiXE6_up}
{$DEFINE DelphiXE6up}
{$ENDIF}

{$IFDEF DelphiXE6_up}
{$DEFINE DelphiXE5_up}
{$DEFINE DelphiXE5up}
{$ENDIF}

{$IFDEF DelphiXE5_up}
{$DEFINE DelphiXE4_up}
{$DEFINE DelphiXE4up}
{$ENDIF}

{$IFDEF DelphiXE4_up}
{$DEFINE DelphiXE3_up}
{$DEFINE DelphiXE3up}
{$ENDIF}

{$IFDEF DelphiXE3_up}
{$DEFINE DelphiXE2_up}
{$DEFINE DelphiXE2up}
{$ENDIF}

{$IFDEF DelphiXE2_up}
{$DEFINE DelphiXE_up}
{$DEFINE DelphiXEup}
{$ENDIF}

{$IFDEF DelphiXE_up}
{$DEFINE Delphi2010_up}
{$DEFINE Delphi2010up}
{$ENDIF}

{$IFDEF Delphi2010_up}
{$DEFINE Delphi2009_up}
{$DEFINE Delphi2009up}
{$ENDIF}

{$IFDEF Delphi2009_up}
{$DEFINE Delphi2007_up}
{$DEFINE Delphi2007up}
{$ENDIF}

{$IFDEF Delphi2007_up}
{$DEFINE Delphi2006_up}
{$DEFINE Delphi2006up}
{$ENDIF}

{$IFDEF Delphi2006_up}
{$DEFINE Delphi2005_up}
{$DEFINE Delphi2005up}
{$ENDIF}

{$IFDEF Delphi2005_up}
{$DEFINE Delphi7_up}
{$DEFINE Delphi7up}
{$ENDIF}

{$IFDEF Delphi7_up}
{$DEFINE Delphi6_up}
{$DEFINE Delphi6up}
{$ENDIF}

{$IFDEF Delphi6_up}
{$DEFINE Delphi5_up}
{$DEFINE Delphi5up}
{$ENDIF}

{$IFDEF Delphi5_up}
{$DEFINE Delphi4_up}
{$DEFINE Delphi4up}
{$ENDIF}

{$IFDEF Delphi4_up}
{$DEFINE Delphi3_up}
{$DEFINE Delphi3up}
{$ENDIF}

{$IFDEF Delphi3_up}
{$DEFINE Delphi2_up}
{$DEFINE Delphi2up}
{$ENDIF}

{$IFDEF Delphi2_up}
{$DEFINE Delphi1_up}
{$DEFINE Delphi1up}
{$ENDIF}
