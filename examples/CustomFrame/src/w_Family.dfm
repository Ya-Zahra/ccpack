object f_Family: Tf_Family
  Left = 384
  Top = 150
  AutoSize = True
  Caption = 'Family Data'
  ClientHeight = 537
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cf_Father: TCustomFrameExample
    Left = 0
    Top = 0
    Width = 313
    Height = 265
    AutoSize = True
    TabOrder = 0
    TabStop = True
    Caption = 'Father'
    FirstName = 'FirstName'
    LastName = 'LastName'
    Gender = gMale
    DateOfBirth = 36526.000000000000000000
  end
  object cf_Mother: TCustomFrameExample
    Left = 320
    Top = 0
    Width = 313
    Height = 265
    AutoSize = True
    TabOrder = 1
    TabStop = True
    Caption = 'Mother'
    FirstName = 'FirstName'
    LastName = 'LastName'
    Gender = gFemale
    DateOfBirth = 36526.000000000000000000
  end
  object cf_FirstChild: TCustomFrameExample
    Left = 0
    Top = 272
    Width = 313
    Height = 265
    AutoSize = True
    TabOrder = 2
    TabStop = True
    Caption = 'First Child'
    FirstName = 'FirstName'
    LastName = 'LastName'
    Gender = gUnspecified
    DateOfBirth = 36526.000000000000000000
  end
  object cf_SecondChild: TCustomFrameExample
    Left = 320
    Top = 272
    Width = 313
    Height = 265
    AutoSize = True
    TabOrder = 3
    TabStop = True
    Caption = 'Second Child'
    FirstName = 'FirstName'
    LastName = 'LastName'
    Gender = gUnspecified
    DateOfBirth = 36526.000000000000000000
  end
end
