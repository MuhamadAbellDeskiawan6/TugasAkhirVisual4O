object Form1: TForm1
  Left = 149
  Top = 141
  Width = 1044
  Height = 621
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
    Left = 168
    Top = 40
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object Label2: TLabel
    Left = 168
    Top = 72
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label3: TLabel
    Left = 168
    Top = 104
    Width = 65
    Height = 13
    Caption = 'NAMA SISWA'
  end
  object Label4: TLabel
    Left = 168
    Top = 136
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label5: TLabel
    Left = 168
    Top = 168
    Width = 72
    Height = 13
    Caption = 'TEMPAT LAHIR'
  end
  object Label6: TLabel
    Left = 168
    Top = 200
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object Label7: TLabel
    Left = 168
    Top = 232
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object Label8: TLabel
    Left = 168
    Top = 264
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label9: TLabel
    Left = 168
    Top = 296
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label10: TLabel
    Left = 168
    Top = 328
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object Label11: TLabel
    Left = 168
    Top = 360
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 424
    Width = 937
    Height = 129
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
    Left = 296
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 296
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 296
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 296
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 296
    Top = 192
    Width = 186
    Height = 21
    Date = 45090.367520347220000000
    Time = 45090.367520347220000000
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 296
    Top = 224
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = '--PILIH JENIS KELAMIN--'
    Items.Strings = (
      'laki-laki'
      'perempuan')
  end
  object Edit5: TEdit
    Left = 296
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 296
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit7: TEdit
    Left = 296
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit8: TEdit
    Left = 296
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit9: TEdit
    Left = 296
    Top = 352
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object BitBtn1: TBitBtn
    Left = 600
    Top = 40
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 12
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 600
    Top = 80
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 13
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 600
    Top = 120
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 14
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 600
    Top = 160
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 15
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 600
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 16
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
    Left = 40
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_siswa')
    Params = <>
    Left = 40
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 136
  end
end
