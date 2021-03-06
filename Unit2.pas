unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTSlave: TADOTable;
    DataSSlave: TDataSource;
    ADOTCustomers: TADOTable;
    DataSCustomers: TDataSource;
    ADOQConnnectInfo: TADOQuery;
    DataSConnectInfo: TDataSource;
    ADOQService: TADOQuery;
    DataSService: TDataSource;
    ADOTServer: TADOTable;
    DataSServer: TDataSource;
    ADOQCustomers: TADOQuery;
    DataSCustomersQ: TDataSource;
    ADOQTest: TADOQuery;
    DataSTest: TDataSource;
    ADOQSlave: TADOQuery;
    DataSQSlave: TDataSource;
    ADOQTested: TADOQuery;
    DataSTested: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
