object Form8: TForm8
  Left = 192
  Top = 150
  Width = 1044
  Height = 542
  Caption = 'Form8'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 152
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 152
    Top = 96
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label4: TLabel
    Left = 152
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label5: TLabel
    Left = 152
    Top = 160
    Width = 52
    Height = 13
    Caption = 'Created at'
  end
  object Label6: TLabel
    Left = 152
    Top = 192
    Width = 72
    Height = 13
    Caption = 'Created Userid'
  end
  object Label7: TLabel
    Left = 152
    Top = 224
    Width = 54
    Height = 13
    Caption = 'Updated at'
  end
  object Label8: TLabel
    Left = 152
    Top = 256
    Width = 74
    Height = 13
    Caption = 'Updated Userid'
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 336
    Width = 865
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 288
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 288
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 288
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 288
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 288
    Top = 152
    Width = 186
    Height = 21
    Date = 45102.811271898150000000
    Time = 45102.811271898150000000
    TabOrder = 5
  end
  object DateTimePicker2: TDateTimePicker
    Left = 288
    Top = 216
    Width = 186
    Height = 21
    Date = 45102.811420324080000000
    Time = 45102.811420324080000000
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 288
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 288
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object BitBtn1: TBitBtn
    Left = 568
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 568
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 568
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 11
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 568
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 568
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 13
    OnClick = BitBtn5Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\uniska\SEMESTER 4\PEMROGRAMAN VISUAL 2\UAS\libmysql.dll'
    Left = 24
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_user')
    Params = <>
    Left = 24
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 24
    Top = 112
  end
end
