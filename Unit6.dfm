object Form6: TForm6
  Left = 192
  Top = 150
  Width = 1044
  Height = 542
  Caption = 'Form6'
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
    Top = 56
    Width = 40
    Height = 13
    Caption = 'Id Siswa'
  end
  object Label2: TLabel
    Left = 152
    Top = 88
    Width = 35
    Height = 13
    Caption = 'Id Ortu'
  end
  object Label3: TLabel
    Left = 152
    Top = 120
    Width = 83
    Height = 13
    Caption = 'status_hub_anak'
    FocusControl = DBEdit1
  end
  object Label4: TLabel
    Left = 152
    Top = 152
    Width = 55
    Height = 13
    Caption = 'keterangan'
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 152
    Top = 184
    Width = 56
    Height = 13
    Caption = 'status_ortu'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 320
    Width = 937
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 248
    Top = 48
    Width = 145
    Height = 21
    DataField = 'id_siswa'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 248
    Top = 80
    Width = 145
    Height = 21
    DataField = 'id_ortu'
    DataSource = DataSource1
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 264
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 352
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 440
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = BitBtn5Click
  end
  object DBEdit1: TDBEdit
    Left = 248
    Top = 112
    Width = 654
    Height = 21
    DataField = 'status_hub_anak'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 144
    Width = 654
    Height = 21
    DataField = 'keterangan'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 176
    Width = 654
    Height = 21
    DataField = 'status_ortu'
    DataSource = DataSource1
    TabOrder = 10
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
      'select * from tabel_hubungan')
    Params = <>
    Left = 24
    Top = 64
    object ZQuery1id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object ZQuery1siswa_id: TIntegerField
      FieldName = 'siswa_id'
    end
    object ZQuery1ortu_id: TIntegerField
      FieldName = 'ortu_id'
    end
    object ZQuery1status_hub_anak: TStringField
      FieldName = 'status_hub_anak'
      Size = 50
    end
    object ZQuery1keterangan: TStringField
      FieldName = 'keterangan'
      Size = 50
    end
    object ZQuery1status_ortu: TStringField
      FieldName = 'status_ortu'
      Required = True
      Size = 50
    end
    object ZQuery1id_siswa: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_siswa'
      LookupDataSet = ZQuery2
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'siswa_id'
      Lookup = True
    end
    object ZQuery1id_ortu: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_ortu'
      LookupDataSet = ZQuery3
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'ortu_id'
      Lookup = True
    end
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_siswa')
    Params = <>
    Left = 24
    Top = 112
  end
  object ZQuery3: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 24
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 72
    Top = 64
  end
end
