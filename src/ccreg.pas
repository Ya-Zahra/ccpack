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

unit ccreg;

interface
uses
  Windows,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  ccBoxes,
  Variants,
  rtlconsts;

type
  TRegisterCustomContainerProc = procedure(AClass: TComponentClass);

procedure RegisterCustomContainer(AClass: TComponentClass);
procedure UnRegisterCustomContainer(AClass: TComponentClass);

function GetCustomContainerClass(const AClassName: string): TComponentClass; overload;
function FindCustomContainerClass(const AClassName: string): TComponentClass;
function GetCustomContainerUnit(const AClassName: string): string;

function GetCustomContainerClass(const Index: Integer): TComponentClass; overload;
function GetCustomContainerClassListCount: Integer;

var
  RegisterCustomContainerProc: TRegisterCustomContainerProc = nil;

const
  BaseContainerClassArray: array[0..5] of TComponentClass
    = (TForm, TDataModule, TFrame, TBox, TControlGroupBox, TControlScrollBox);

function IsBaseContainer(AClass: TComponentClass): Integer;
function GetBaseContainer(AClass: TComponentClass): Integer;

implementation

uses
  Consts,
  TypInfo;

var
  CustomContainerClassList: TThreadList = nil;

function IsBaseContainer(AClass: TComponentClass): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to High(BaseContainerClassArray) do
    if AClass = BaseContainerClassArray[i] then begin
      Result := i;
      Break;
    end;
end;

function GetBaseContainer(AClass: TComponentClass): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to High(BaseContainerClassArray) do
    if AClass.InheritsFrom(BaseContainerClassArray[i]) then begin
      Result := i;
      Break;
    end;
end;

procedure ClassNotFound(const ClassName: string);
begin
  raise EClassNotFound.CreateFmt(SClassNotFound, [ClassName]);
end;

function GetCustomContainerClass(const AClassName: string): TComponentClass;
var
  i: Integer;
begin
  with CustomContainerClassList.LockList do
    try
      for i := 0 to Count - 1 do begin
        Result := Items[i];
        if Result.ClassNameIs(AClassName) then Exit;
      end;
      Result := nil;
    finally
      CustomContainerClassList.UnLockList;
    end;
end;

function FindCustomContainerClass(const AClassName: string): TComponentClass;
begin
  Result := GetCustomContainerClass(AClassName);
  if Result = nil then ClassNotFound(AClassName);
end;

function GetCustomContainerUnit(const AClassName: string): string;
begin
  Result := GetTypeData(PTypeInfo(GetCustomContainerClass(AClassName).ClassInfo))^.UnitName;
end;

function GetCustomContainerClass(const Index: Integer): TComponentClass;
var
  List: TList;
begin
  List := CustomContainerClassList.LockList;
  try
    Result := List.Items[Index];
  finally
    CustomContainerClassList.UnLockList;
  end;
end;

function GetCustomContainerClassListCount: Integer;
var
  List: TList;
begin
  List := CustomContainerClassList.LockList;
  try
    Result := List.Count;
  finally
    CustomContainerClassList.UnLockList;
  end;
end;

{procedure RegisterCustomContainer(AClass: TComponentClass);
var
  AClassName: string;
begin
  with CustomContainerClassList.LockList do
  try
    while IndexOf(AClass) = -1 do
    begin
      AClassName := AClass.ClassName;
      if GetCustomContainerClass(AClassName) <> nil then
        raise EFilerError.CreateResFmt(@SDuplicateClass, [AClassName]);
      Add(AClass);
      if AClass = TPersistent then Break;
      AClass := TComponentClass(AClass.ClassParent);
    end;
  finally
    ClassList.UnlockList;
  end;
end;
}

procedure RegisterCustomContainer(AClass: TComponentClass);
begin
  if Assigned(RegisterCustomContainerProc) then
    RegisterCustomContainerProc(AClass)
  else
    raise EComponentError.Create('Cannot register ' + AClass.ClassName + ' class.');
  with CustomContainerClassList.LockList do
    try
      Add(AClass);
    finally
      CustomContainerClassList.UnLockList;
    end;
end;

procedure UnRegisterCustomContainer(AClass: TComponentClass);
begin
  CustomContainerClassList.Remove(AClass);
end;

procedure UnRegisterCustomContainerClasses(Module: HMODULE);
var
  i: Integer;
  M: TMemoryBasicInformation;
begin
  with CustomContainerClassList.LockList do
    try
      for i := Count - 1 downto 0 do begin
        VirtualQuery(Items[i], M, SizeOf(M));
        if (Module = 0) or (HMODULE(M.AllocationBase) = Module) then
          Delete(i);
      end;
    finally
      CustomContainerClassList.UnLockList;
    end;
end;

procedure ModuleUnload(Instance: LongInt);
begin
  UnRegisterCustomContainerClasses(HMODULE(Instance));
end;

initialization
  AddModuleUnloadProc(ModuleUnload);
  CustomContainerClassList := TThreadList.Create;
finalization
  UnRegisterCustomContainerClasses(HInstance);
  CustomContainerClassList.Free;
  RemoveModuleUnloadProc(ModuleUnload);
end.

