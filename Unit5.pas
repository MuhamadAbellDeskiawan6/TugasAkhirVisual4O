unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
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
  Form5: TForm5;
  id: string;

implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
ComboBox1.Text:='--PILIH JENIS KELAMIN--';
Edit7.Text:='';
Edit8.Text:='';
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=ZQuery1.FieldList[1].AsString;
Edit2.Text:=ZQuery1.FieldList[2].AsString;
Edit3.Text:=ZQuery1.FieldList[3].AsString;
Edit4.Text:=ZQuery1.FieldList[4].AsString;
Edit5.Text:=ZQuery1.FieldList[5].AsString;
Edit6.Text:=ZQuery1.FieldList[6].AsString;
ComboBox1.Text:=ZQuery1.FieldList[7].AsString;
Edit7.Text:=ZQuery1.FieldList[8].AsString;
Edit8.Text:=ZQuery1.FieldList[9].AsString;

Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;
Edit6.Enabled:=True;
ComboBox1.Enabled:=True;
Edit7.Enabled:=True;
Edit8.Enabled:=True;

BitBtn1.Enabled:=False;
BitBtn2.Enabled:=False;
BitBtn3.Enabled:=True;
BitBtn4.Enabled:=True;
BitBtn5.Enabled:=True;
end;

procedure TForm5.posisiawal;
begin
BitBtn1.Enabled:= True;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= False;

Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
Edit4.Enabled:= False;
Edit5.Enabled:= False;
Edit6.Enabled:= False;
ComboBox1.Enabled:= False;
Edit7.Enabled:= False;
Edit8.Enabled:= False;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
bersih;

BitBtn1.Enabled:= false;
BitBtn2.Enabled:= True;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= True;

Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
ComboBox1.Enabled:= True;
Edit7.Enabled:= True;
Edit8.Enabled:= True;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
begin
if (Edit1.Text= '')or
(Edit2.Text='')or
(Edit3.Text= '')or
(Edit4.Text='')or
(Edit5.Text='') or
(Edit6.Text='') or
(ComboBox1.Text='') or
(Edit7.Text='') or
(Edit8.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nik',Edit1.Text,[])) or
(ZQuery1.Locate('nama',Edit2.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
posisiawal;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into tabel_ortu values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+ComboBox1.Text+'","'+Edit7.Text+'","'+Edit8.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_ortu');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
bersih;
end;
end;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
begin
if (Edit1.Text= '')or
(Edit2.Text='')or
(Edit3.Text= '')or
(Edit4.Text='')or
(Edit5.Text='') or
(Edit6.Text='') or
(ComboBox1.Text='') or
(Edit7.Text='') or
(Edit8.Text='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = ZQuery1.Fields[1].AsString) and
(Edit2.Text = ZQuery1.Fields[2].AsString) and
(Edit3.Text = ZQuery1.Fields[3].AsString) and
(Edit4.Text = ZQuery1.Fields[4].AsString) and
(Edit5.Text = ZQuery1.Fields[5].AsString) and
(Edit6.Text = ZQuery1.Fields[6].AsString) and
(ComboBox1.Text = ZQuery1.Fields[7].AsString) and
(Edit7.Text = ZQuery1.Fields[8].AsString) and
(Edit8.Text = ZQuery1.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update tabel_ortu set nik="'+Edit1.Text+'",nama="'+Edit2.Text+'",pendidikan="'+Edit3.Text+'",pekerjaan="'+Edit4.Text+'",telp="'+Edit5.Text+'",alamat="'+Edit6.Text+'",jk="'+ComboBox1.Text+'",agama="'+Edit7.Text+'",is_active="'+Edit8.Text+'" where id="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_ortu');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from tabel_ortu where id="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_ortu');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS!');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

end.
