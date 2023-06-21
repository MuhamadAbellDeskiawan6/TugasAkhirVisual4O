object Form4: TForm4
  Left = 192
  Top = 125
  Width = 1044
  Height = 540
  Caption = 'Form4'
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
    Left = 144
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Nama Poin'
  end
  object Label2: TLabel
    Left = 144
    Top = 88
    Width = 28
    Height = 13
    Caption = 'bobot'
  end
  object Label3: TLabel
    Left = 144
    Top = 120
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label4: TLabel
    Left = 144
    Top = 152
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 248
    Width = 913
    Height = 217
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
    Left = 240
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 240
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 240
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = '--PILIH JENIS POIN--'
    Items.Strings = (
      'pelanggaran'
      'prestasi')
  end
  object Edit3: TEdit
    Left = 240
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 200
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 328
    Top = 200
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 432
    Top = 200
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 536
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
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
      'select * from tabel_poin')
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
