unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  TfmConta = class(TForm)
    DBEdit1: TDBEdit;
    dsConta: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConta: TfmConta;

implementation

uses Unit2;

{$R *.dfm}

procedure TfmConta.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
        Unit2.dmBancario.cdsConta.ApplyUpdates(0);
end;

procedure TfmConta.FormActivate(Sender: TObject);
begin
  Unit2.dmBancario.cdsConta.Active;
end;

procedure TfmConta.FormShow(Sender: TObject);
begin
  Unit2.dmBancario.cdsConta.Active;
end;

end.
