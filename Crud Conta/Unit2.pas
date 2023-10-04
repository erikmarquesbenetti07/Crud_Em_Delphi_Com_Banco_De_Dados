unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, SimpleDS;

type
  TdmBancario = class(TDataModule)
    cnxBancario: TSQLConnection;
    sqlConta: TSQLQuery;
    dspConta: TDataSetProvider;
    cdsConta: TClientDataSet;
    sds: TSimpleDataSet;
    sqlHistorico: TSQLQuery;
    dspHistorico: TDataSetProvider;
    cdsHistorico: TClientDataSet;
    sqlMovimento: TSQLQuery;
    dspMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBancario: TdmBancario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
