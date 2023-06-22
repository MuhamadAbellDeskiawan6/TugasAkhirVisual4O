object Form5: TForm5
  Left = 192
  Top = 125
  Width = 1044
  Height = 628
  Caption = 'Form5'
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
    Left = 200
    Top = 32
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 200
    Top = 64
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 200
    Top = 96
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object Label4: TLabel
    Left = 200
    Top = 128
    Width = 57
    Height = 13
    Caption = 'PEKERJAAN'
  end
  object Label5: TLabel
    Left = 200
    Top = 160
    Width = 44
    Height = 13
    Caption = 'TELEPON'
  end
  object Label6: TLabel
    Left = 200
    Top = 192
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label7: TLabel
    Left = 200
    Top = 224
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object Label8: TLabel
    Left = 200
    Top = 256
    Width = 36
    Height = 13
    Caption = 'AGAMA'
  end
  object Label9: TLabel
    Left = 200
    Top = 288
    Width = 53
    Height = 13
    Caption = 'IS ACTIIVE'
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 392
    Width = 897
    Height = 153
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
    Left = 304
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 304
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 304
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 304
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 304
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 304
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 304
    Top = 216
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = '--PILIH JENIS KELAMIN--'
    Items.Strings = (
      'laki-laki'
      'perempuan')
  end
  object Edit7: TEdit
    Left = 304
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit8: TEdit
    Left = 304
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 336
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 10
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 240
    Top = 336
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 11
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 336
    Top = 336
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 12
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 432
    Top = 336
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 13
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 528
    Top = 336
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 14
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
    Left = 32
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 32
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 32
    Top = 128
  end
end
