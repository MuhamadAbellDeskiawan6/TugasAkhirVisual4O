unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm9 = class(TForm)
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    LAPORAN1: TMenuItem;
    FORMSISWA1: TMenuItem;
    FORMWALIKELAS1: TMenuItem;
    FORMPOIN1: TMenuItem;
    FORMORTU1: TMenuItem;
    FORMHUBUNGAN1: TMenuItem;
    FORMSEMESTER1: TMenuItem;
    FORMUSER1: TMenuItem;
    FORMUSER2: TMenuItem;
    KELUAR1: TMenuItem;
    procedure FORMSISWA1Click(Sender: TObject);
    procedure FORMWALIKELAS1Click(Sender: TObject);
    procedure FORMPOIN1Click(Sender: TObject);
    procedure FORMORTU1Click(Sender: TObject);
    procedure FORMHUBUNGAN1Click(Sender: TObject);
    procedure FORMSEMESTER1Click(Sender: TObject);
    procedure FORMUSER1Click(Sender: TObject);
    procedure FORMUSER2Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm9.FORMSISWA1Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TForm9.FORMWALIKELAS1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm9.FORMPOIN1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm9.FORMORTU1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm9.FORMHUBUNGAN1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm9.FORMSEMESTER1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm9.FORMUSER1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm9.FORMUSER2Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm9.KELUAR1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
