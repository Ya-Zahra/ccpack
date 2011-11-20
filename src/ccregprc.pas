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
{$I CCPDEF.INC}

{$IFDEF VER_CB}
{$OBJEXPORTALL On}
{$ENDIF}

unit ccregprc;

interface
uses
  Windows,
  SysUtils,
  Classes, {DsgnIntf}
  DesignIntf,
  Forms,
  ccBoxes;

procedure RegisterCustomContainerProcImpl(AClass: TComponentClass);

implementation

uses
  TypInfo,
  Designer,
  DMForm,
  DesignEditors,
  DesignWindows, {DMDesigner,}
  WCtlForm,
  ccreg;

procedure RegisterCustomContainerProcImpl(AClass: TComponentClass);
begin
  if GetBaseContainer(AClass) = -1 then
    raise EComponentError.Create('Cannot register descendant for unknown container class:' + AClass.ClassName + '.');

  if AClass.InheritsFrom(TForm) and not AClass.ClassNameIs('TForm') then
    RegisterCustomModule(AClass, TCustomModule)
  else
    if AClass.InheritsFrom(TDataModule) and not AClass.ClassNameIs('TDataModule') then
      RegisterCustomModule(AClass, TDataModuleCustomModule) //TDataModuleDesignerCustomModule)
    else
      if AClass.InheritsFrom(TBox)
        or AClass.InheritsFrom(TControlGroupBox)
        or AClass.InheritsFrom(TControlScrollBox)
        or (AClass.InheritsFrom(TFrame) and not AClass.ClassNameIs('TFrame')) then
        RegisterCustomModule(AClass, TWinControlCustomModule)
end;

procedure InitBaseContainerList;
var
  i: Integer;
begin
  for i := 0 to High(BaseContainerClassArray) do
    RegisterCustomContainer(BaseContainerClassArray[i]);
end;

initialization
  RegisterCustomContainerProc := RegisterCustomContainerProcImpl;
  InitBaseContainerList;
finalization
  RegisterCustomContainerProc := nil;
end.

