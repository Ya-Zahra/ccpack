object CustomFrameExample: TCustomFrameExample
  Left = 0
  Top = 0
  Width = 313
  Height = 265
  AutoSize = True
  TabOrder = 0
  TabStop = True
  object grp_Caption: TGroupBox
    Left = 0
    Top = 0
    Width = 313
    Height = 265
    Caption = 'Caption'
    TabOrder = 0
    object l_FirstName: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = 'First Name'
    end
    object l_LastName: TLabel
      Left = 8
      Top = 64
      Width = 50
      Height = 13
      Caption = 'Last Name'
    end
    object ed_FirstName: TEdit
      Left = 8
      Top = 32
      Width = 297
      Height = 21
      TabOrder = 0
      Text = 'FirstName'
    end
    object ed_LastName: TEdit
      Left = 8
      Top = 80
      Width = 297
      Height = 21
      TabOrder = 1
      Text = 'LastName'
    end
    object grp_Gender: TGroupBox
      Left = 8
      Top = 112
      Width = 296
      Height = 54
      Caption = 'Gender'
      TabOrder = 2
      object rb_Male: TRadioButton
        Left = 16
        Top = 22
        Width = 129
        Height = 17
        Caption = 'Male'
        TabOrder = 0
      end
      object rb_Female: TRadioButton
        Left = 151
        Top = 22
        Width = 142
        Height = 17
        Caption = 'Female'
        TabOrder = 1
      end
    end
    object grp_DateOfBirth: TGroupBox
      Left = 8
      Top = 176
      Width = 296
      Height = 81
      Caption = 'Date of Birth'
      TabOrder = 3
      object l_DateOfBirth: TLabel
        Left = 7
        Top = 22
        Width = 91
        Height = 13
        Caption = 'Year / Month / Day'
      end
      object cmb_Year: TComboBox
        Left = 3
        Top = 41
        Width = 145
        Height = 21
        AutoDropDown = True
        ItemHeight = 13
        TabOrder = 0
        Text = 'cmb_Year'
        Items.Strings = (
          '1960'
          '1961')
      end
      object cmb_Month: TComboBox
        Left = 154
        Top = 41
        Width = 65
        Height = 21
        AutoDropDown = True
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
      object cmb_Day: TComboBox
        Left = 225
        Top = 41
        Width = 65
        Height = 21
        AutoDropDown = True
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31')
      end
    end
  end
end
