object Form2: TForm2
  Left = 199
  Top = 129
  Width = 607
  Height = 436
  Caption = 'Form2'
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
    Left = 128
    Top = 56
    Width = 55
    Height = 13
    Caption = 'Nama Kelas'
  end
  object Label2: TLabel
    Left = 128
    Top = 88
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Edit1: TEdit
    Left = 224
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 80
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '--PILIH JURUSAN--'
    Items.Strings = (
      'ipa'
      'ips')
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 288
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 376
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 464
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 208
    Width = 457
    Height = 120
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 32
    Top = 144
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_kelas')
    Params = <>
    Left = 32
    Top = 88
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
    Top = 32
  end
end
