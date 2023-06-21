object Form3: TForm3
  Left = 192
  Top = 125
  Width = 1044
  Height = 540
  Caption = 'Form3'
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
    Left = 120
    Top = 48
    Width = 15
    Height = 13
    Caption = 'Nip'
  end
  object Label2: TLabel
    Left = 120
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 120
    Top = 112
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label4: TLabel
    Left = 120
    Top = 144
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label5: TLabel
    Left = 120
    Top = 176
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object Label6: TLabel
    Left = 120
    Top = 208
    Width = 72
    Height = 13
    Caption = 'Mata Pelajaran'
  end
  object Label7: TLabel
    Left = 120
    Top = 240
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label8: TLabel
    Left = 120
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 344
    Width = 905
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
    Left = 224
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 224
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 104
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = '--PILIH JENIS KELAMIN--'
    Items.Strings = (
      'laki-laki'
      'perempuan')
  end
  object Edit3: TEdit
    Left = 224
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 224
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 224
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 224
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 224
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object BitBtn1: TBitBtn
    Left = 440
    Top = 40
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 440
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 440
    Top = 136
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 440
    Top = 184
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 440
    Top = 232
    Width = 75
    Height = 25
    Caption = 'BATAL'
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
    Left = 32
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_walikelas')
    Params = <>
    Left = 32
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 32
    Top = 136
  end
end
