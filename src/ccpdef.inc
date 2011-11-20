{*******************************************************}
{                                                       }
{       Delphi Visual Component Library                 }
{       Custom Containers Pack (CCPack)                 }
{                                                       }
{       Copyright (c) 1997-99, Sergey Orlik             }
{                                                       }
{     Written by:                                       }
{       Sergey Orlik                                    }
{       product manager                                 }
{       Russia, C.I.S. and Baltic States (former USSR)  }
{       Inprise Moscow office                           }
{       e-mail:  sorlik@inprise.ru                      }
{       WWW: http://www.inprise.ru                      }
{                                                       }
{       Personal Home Page:                             }
{       www.geocities.com/SiliconValley/Way/9006/       }
{                                                       }
{*******************************************************}

//======================================
// VCL Version Define

{$IFDEF VER185}  // Delphi 2007 (not really necessary since Delphi 2006 also defines VER180)
      {$DEFINE VER_VCL5}
{$ENDIF}

{$IFDEF VER180}  // Delphi 2006
      {$DEFINE VER_VCL5}
{$ENDIF}

{$IFDEF VER170}  // Delphi 2005
      {$DEFINE VER_VCL5}
{$ENDIF}

{$IFDEF VER150}  // Delphi 7
      {$DEFINE VER_VCL5}
{$ENDIF}

{$IFDEF VER130}  // Delphi 5
      {$DEFINE VER_VCL5}
{$ENDIF}

{$IFDEF VER125}  // CBuilder 4
      {$DEFINE VER_VCL4}
{$ENDIF}

{$IFDEF VER120}  // Delphi 4
      {$DEFINE VER_VCL4}
{$ENDIF}


//======================================
// Language&IDE Define

{$IFDEF VER180}  // Delphi 2006
      {$DEFINE VER_D}
{$ENDIF}

{$IFDEF VER150}  // Delphi 7
      {$DEFINE VER_D}
{$ENDIF}

{$IFDEF VER130}  // Delphi 5
      {$DEFINE VER_D}
{$ENDIF}

{$IFDEF VER125}  // CBuilder 4
      {$DEFINE VER_CB}
{$ENDIF}


