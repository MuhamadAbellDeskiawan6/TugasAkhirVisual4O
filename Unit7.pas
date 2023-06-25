unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, DBCtrls, StdCtrls,
  ComCtrls, Buttons, Mask;

type
  TForm7 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    ZQuery4: TZQuery;
    ZQuery5: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZQuery1id: TIntegerField;
    ZQuery1siswa_id: TIntegerField;
    ZQuery1poin_id: TIntegerField;
    ZQuery1wali_id: TIntegerField;
    ZQuery1ortu_id: TIntegerField;
    ZQuery1kelas_id: TIntegerField;
    ZQuery1tanggal: TDateField;
    ZQuery1semester: TStringField;
    ZQuery1status: TStringField;
    ZQuery1tingkat_kelas: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    ZQuery6: TZQuery;
    ZQuery1id_siswa: TIntegerField;
    ZQuery1id_poin: TIntegerField;
    ZQuery1id_wali: TIntegerField;
    ZQuery1id_ortu: TIntegerField;
    ZQuery1id_kelas: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.bersih;
begin
DBLookupComboBox1.KeyValue:=null;
DBLookupComboBox2.KeyValue:=null;
DBLookupComboBox3.KeyValue:=null;
DBLookupComboBox4.KeyValue:=null;
DBLookupComboBox5.KeyValue:=null;
DBComboBox1.Text:='--PILIH SEMESTER--';
DBEdit1.Text:='';
DBEdit2.Text:='';
DBEdit3.Text:='';
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
DBLookupComboBox1.KeyValue:= ZQuery1.FieldList[1].AsInteger;
DBLookupComboBox2.KeyValue:= ZQuery1.FieldList[2].AsInteger;
DBLookupComboBox3.KeyValue:= ZQuery1.FieldList[3].AsInteger;
DBLookupComboBox4.KeyValue:= ZQuery1.FieldList[4].AsInteger;
DBLookupComboBox5.KeyValue:= ZQuery1.FieldList[5].AsInteger;
DBEdit3.Text:= ZQuery1.FieldList[6].AsString;
DBComboBox1.Text:=ZQuery1.FieldList[7].AsString;
DBEdit1.Text:=ZQuery1.FieldList[8].AsString;
DBEdit2.Text:=ZQuery1.FieldList[9].AsString;

DBLookupComboBox1.Enabled:= True;
DBLookupComboBox2.Enabled:= True;
DBLookupComboBox3.Enabled:= True;
DBLookupComboBox4.Enabled:= True;
DBLookupComboBox5.Enabled:= True;
DBEdit3.Enabled:= True;
DBComboBox1.Enabled:= True;
DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;

BitBtn1.Enabled:= False;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= True;
BitBtn4.Enabled:= True;
BitBtn5.Enabled:= True;

end;

procedure TForm7.posisiawal;
begin
bersih;
BitBtn1.Enabled:= True;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= False;
DBLookupComboBox1.Enabled:= False;
DBLookupComboBox2.Enabled:= False;
DBLookupComboBox3.Enabled:= False;
DBLookupComboBox4.Enabled:= False;
DBLookupComboBox5.Enabled:= False;
DBEdit3.Enabled:=False;
DBComboBox1.Enabled:= False;
DBEdit1.Enabled:= False;
DBEdit2.Enabled:= False;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
BitBtn1.Enabled:= False;
BitBtn2.Enabled:= True;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= True;
ZQuery1.Append;
DBLookupComboBox1.Enabled:= True;
DBLookupComboBox2.Enabled:= True;
DBLookupComboBox3.Enabled:= True;
DBLookupComboBox4.Enabled:= True;
DBLookupComboBox5.Enabled:= True;
DBEdit3.Enabled:=True;
DBComboBox1.Enabled:= True;
DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
ZQuery1.Post;
ShowMessage('data berhasil disimpan');
ZQuery1.Close;
ZQuery1.Open;
posisiawal;
end;

procedure TForm7.BitBtn3Click(Sender: TObject);
begin
ZQuery1.Post;
ShowMessage('data berhasil diupdate');
ZQuery1.Close;
ZQuery1.Open;
posisiawal;
end;

procedure TForm7.BitBtn4Click(Sender: TObject);
begin
ZQuery1.Delete;
ShowMessage('data berhasil dihapus');
ZQuery1.Close;
ZQuery1.Open;
posisiawal;
end;

procedure TForm7.BitBtn5Click(Sender: TObject);
begin
posisiawal;
bersih;
end;

end.
