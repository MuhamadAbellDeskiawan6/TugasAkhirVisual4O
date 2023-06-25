object Form7: TForm7
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form7'
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
    Top = 48
    Width = 40
    Height = 13
    Caption = 'Id Siswa'
  end
  object Label2: TLabel
    Left = 200
    Top = 80
    Width = 33
    Height = 13
    Caption = 'Id Poin'
  end
  object Label3: TLabel
    Left = 200
    Top = 112
    Width = 61
    Height = 13
    Caption = 'Id Wali Kelas'
  end
  object Label4: TLabel
    Left = 200
    Top = 144
    Width = 64
    Height = 13
    Caption = 'Id Orang Tua'
  end
  object Label5: TLabel
    Left = 200
    Top = 176
    Width = 38
    Height = 13
    Caption = 'Id Kelas'
  end
  object Label6: TLabel
    Left = 200
    Top = 224
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label7: TLabel
    Left = 200
    Top = 256
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object Label8: TLabel
    Left = 200
    Top = 288
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 200
    Top = 320
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object Label10: TLabel
    Left = 280
    Top = 200
    Width = 141
    Height = 13
    Caption = 'Format Tanggal : 12/02/2023'
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 352
    Width = 897
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
    Left = 280
    Top = 40
    Width = 145
    Height = 21
    DataField = 'id_siswa'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 280
    Top = 72
    Width = 145
    Height = 21
    DataField = 'id_poin'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 280
    Top = 104
    Width = 145
    Height = 21
    DataField = 'id_wali'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 280
    Top = 136
    Width = 145
    Height = 21
    DataField = 'id_ortu'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 280
    Top = 168
    Width = 145
    Height = 21
    DataField = 'id_kelas'
    DataSource = DataSource1
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 552
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 552
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 552
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 552
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 552
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 10
    OnClick = BitBtn5Click
  end
  object DBEdit1: TDBEdit
    Left = 280
    Top = 280
    Width = 121
    Height = 21
    DataField = 'status'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit2: TDBEdit
    Left = 280
    Top = 312
    Width = 121
    Height = 21
    DataField = 'tingkat_kelas'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBComboBox1: TDBComboBox
    Left = 280
    Top = 248
    Width = 145
    Height = 21
    DataField = 'semester'
    DataSource = DataSource1
    ItemHeight = 13
    Items.Strings = (
      'ganjil'
      'genap')
    TabOrder = 13
  end
  object DBEdit3: TDBEdit
    Left = 280
    Top = 216
    Width = 134
    Height = 21
    DataField = 'tanggal'
    DataSource = DataSource1
    TabOrder = 14
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
      'select * from tabel_semester')
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
    object ZQuery1poin_id: TIntegerField
      FieldName = 'poin_id'
    end
    object ZQuery1wali_id: TIntegerField
      FieldName = 'wali_id'
    end
    object ZQuery1ortu_id: TIntegerField
      FieldName = 'ortu_id'
    end
    object ZQuery1kelas_id: TIntegerField
      FieldName = 'kelas_id'
    end
    object ZQuery1tanggal: TDateField
      FieldName = 'tanggal'
    end
    object ZQuery1semester: TStringField
      FieldName = 'semester'
      Size = 6
    end
    object ZQuery1status: TStringField
      FieldName = 'status'
    end
    object ZQuery1tingkat_kelas: TStringField
      FieldName = 'tingkat_kelas'
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
    object ZQuery1id_poin: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_poin'
      LookupDataSet = ZQuery3
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'poin_id'
      Lookup = True
    end
    object ZQuery1id_wali: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_wali'
      LookupDataSet = ZQuery4
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'wali_id'
      Lookup = True
    end
    object ZQuery1id_ortu: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_ortu'
      LookupDataSet = ZQuery5
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'ortu_id'
      Lookup = True
    end
    object ZQuery1id_kelas: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_kelas'
      LookupDataSet = ZQuery6
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'kelas_id'
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
      'select * from tabel_poin')
    Params = <>
    Left = 24
    Top = 160
  end
  object ZQuery4: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_walikelas')
    Params = <>
    Left = 64
    Top = 64
  end
  object ZQuery5: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 64
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 64
    Top = 16
  end
  object ZQuery6: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_kelas')
    Params = <>
    Left = 64
    Top = 160
  end
end
