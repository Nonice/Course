unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Data.DB,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    DBGrid1: TDBGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Customers: TTabSheet;
    ConnectInfo: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel4: TPanel;
    Button7: TButton;
    Button6: TButton;
    Button8: TButton;
    Button4: TButton;
    Button5: TButton;
    Button9: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Button10: TButton;
    Button11: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton1: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Panel5: TPanel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    CheckBox1: TCheckBox;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Label5: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure Button16Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //My
  ServerID:Integer;
  Server,ID:String;

implementation

{$R *.dfm}

uses Unit2;


procedure TForm1.Button10Click(Sender: TObject);
begin
    Panel1.Visible := NOT(Panel1.Visible);
    Edit1.clear;
    Edit2.clear;
    Edit3.clear;
    Edit4.clear;
    DBLookupComboBox2.KeyValue:=null;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
DataModule2.ADOQService.Close;
DataModule2.ADOQService.SQL.Text:='DELETE FROM Service WHERE ID=' + ID + ';';
DataModule2.ADOQService.ExecSQL;

DataModule2.ADOQService.Close;
DataModule2.ADOQService.SQL.Text:=
' SELECT '+
' Service.ID, '+
' Service.?????, '+
' Service.???, '+
' Service.????, '+
' Service.?????, '+
' Service.??????????_??????????, '+
 'Server.???????????_????? AS ?????? '+
'FROM  '+
'Server, ' +
'Service '+
'WHERE '+
'Service.??????_?? = Server.ID ';
DataModule2.ADOQService.Open;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
DataModule2.ADOQConnnectInfo.Close;
DataModule2.ADOQConnnectInfo.SQL.Text:='SELECT '+
' ConnectInfo.ID,'+
' ConnectInfo.[????],'+
' Service.?????,'+
' (Customers.[????????] & " " + Customers.[???]) AS ??????,'+
' ConnectInfo.[?????????],'+
' ConnectInfo.[??????_ID],'+
' ConnectInfo.[????] '+
' FROM Customers, ConnectInfo INNER JOIN Service ON Service.ID = ConnectInfo.[??????_ID]'+
' WHERE'+
' Customers.ID = ConnectInfo.[??????_ID] AND ConnectInfo.ID = '+Edit6.Text+' ORDER BY ConnectInfo.ID';
DataModule2.ADOQConnnectInfo.Open;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
   Panel5.Visible:=true;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
DataModule2.ADOQConnnectInfo.Close;
DataModule2.ADOQConnnectInfo.SQL.Text:=
'SELECT '+
'ConnectInfo.ID, '+
'ConnectInfo.[????], '+
'Service.[?????], '+
'(Customers.[????????] & " " + Customers.[???]) AS ??????,'+
'ConnectInfo.[?????????], '+
'ConnectInfo.[????] '+
' FROM ConnectInfo, '+
'Customers, '+
'Service '+
'WHERE '+
'(ConnectInfo.[?????_ID] = Service.ID AND '+
'ConnectInfo.[??????_ID] = Customers.ID) '+
'ORDER BY ConnectInfo.ID';
DataModule2.ADOQConnnectInfo.Open;

Edit5.Clear;
Edit6.Clear;

Panel5.Visible:=false;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
if (Edit1.Text <> '') and (Edit2.Text <> '') and (Edit3.Text <> '') and (Edit4.Text <> '') and (DBLookupComboBox2.KeyValue<>null) then
begin
DataModule2.ADOQService.Close;
DataModule2.ADOQService.SQL.Text:='INSERT INTO Service ( [?????], [???], [????], [?????],[??????????_??????????],[??????_??] ) values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'",'+BoolToStr(CheckBox1.Checked)+','+IntToStr(DBLookupComboBox2.KeyValue)+')';
DataModule2.ADOQService.ExecSQL;

DataModule2.ADOQService.Close;
DataModule2.ADOQService.SQL.Text:= 'SELECT Service.ID, Service.?????, Service.???, Service.????, Service.?????, Service.??????????_??????????, Server.???????????_????? AS ?????? '
+'FROM Server, Service WHERE Service.??????_?? = Server.ID ';
DataModule2.ADOQService.Open;
end;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
     if ID <> ''  then
      begin
      DataModule2.ADOQService.Close;
      DataModule2.ADOQService.SQL.Text:='UPDATE Service '+
          'SET '+
          'Service.????? ="' +Edit1.Text+ '",'+
          'Service.??? ="' +Edit2.Text+ '",'+
          'Service.???? ="' +Edit3.Text+ '",'+
          'Service.????? ="' +Edit4.Text+ '",'+
          'Service.??????????_?????????? =' +BoolToStr(CheckBox1.Checked)+ ','+
          'Service.??????_?? =' +IntToStr(DBLookupComboBox2.KeyValue)+ ' '+
          'WHERE '+
          'Service.ID =' + ID + ';';
      DataModule2.ADOQService.ExecSQL;

      DataModule2.ADOQService.Close;
      DataModule2.ADOQService.SQL.Text:= 'SELECT Service.ID, Service.?????, Service.???, Service.????, Service.?????, Service.??????????_??????????, Server.???????????_????? AS ?????? '
      +'FROM Server, Service WHERE Service.??????_?? = Server.ID ';
      DataModule2.ADOQService.Open;
      end;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
   Edit1.clear;
   Edit2.clear;
   Edit3.clear;
   Edit4.clear;
   DBLookupComboBox2.KeyValue:=null;
   CheckBox1.Checked:=False;
end;

procedure TForm1.Button1Click(Sender: TObject);
  begin
    DataModule2.ADOTServer.Insert;
  end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   if  DataModule2.ADOTServer.Modified then
    DataModule2.ADOTServer.Post;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    DataModule2.ADOTServer.Delete;
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
    DataModule2.ADOTCustomers.Insert;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     if  DataModule2.ADOTCustomers.Modified then
        DataModule2.ADOTCustomers.Post;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    DataModule2.ADOTSlave.Insert;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 DataModule2.ADOTSlave.Delete;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
      if  DataModule2.ADOTSlave.Modified then
       DataModule2.ADOTSlave.Post;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
       DataModule2.ADOTCustomers.Delete;
end;



procedure TForm1.DBGrid3CellClick(Column: TColumn);
begin
    ID:=DBGrid3.Fields[0].AsString;

    Edit1.Text:=DBGrid3.Fields[1].AsString;
    Edit2.Text:=DBGrid3.Fields[2].AsString;
    Edit3.Text:=DBGrid3.Fields[3].AsString;
    Edit4.Text:=DBGrid3.Fields[4].AsString;
    Server:=DBGrid3.Fields[6].AsString;
    CheckBox1.Checked:= DBGrid3.Fields[5].AsBoolean;

    DataModule2.ADOQTest.Close;
    DataModule2.ADOQTest.SQL.Text:='SELECT ID, ???????????_?????  FROM Server WHERE ( ???????????_????? = "'+Server+'")';
    DataModule2.ADOQTest.Open;
    DBLookupComboBox2.KeyValue:=DataModule2.DataSTest.DataSet.Fields[0].AsInteger;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin


DataModule2.ADOQConnnectInfo.Close;
DataModule2.ADOQConnnectInfo.SQL.Text:= 'SELECT '+
  'ConnectInfo.ID,'+
  'ConnectInfo.[????],'+
  'Service.?????,'+
  '(Customers.[????????] & " " + Customers.[???]) AS ??????,'+
  'ConnectInfo.[?????????],'+
  'ConnectInfo.[??????_ID],'+
  'ConnectInfo.[????] '+
  ' FROM Customers , ConnectInfo INNER JOIN Service ON Service.ID = ConnectInfo.[??????_ID] '+
  'WHERE Customers.[????????] like "%'+Edit5.Text+'%" AND '+
  'Customers.ID = ConnectInfo.[??????_ID]'+
  'ORDER BY ConnectInfo.ID';
DataModule2.ADOQConnnectInfo.Open;
end;


procedure TForm1.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  If DBLookupComboBox2.Focused then begin
         If (WheelDelta < 0) then begin
            DBLookupComboBox2.Perform(WM_KEYDOWN, VK_DOWN, 0)
         end
         else begin
            DBLookupComboBox2.Perform(WM_KEYDOWN, VK_UP, 0);
         end;
      end;
      Handled := True;
end;

procedure TForm1.FormShow(Sender: TObject);
  begin
    DataModule2.ADOQService.Close;
    DataModule2.ADOQService.SQL.Text:=
     'SELECT '+
     'Service.ID, '+
     'Service.?????, '+
     'Service.???, '+
     'Service.????, '+
     'Service.?????, '+
     'Service.??????????_??????????, '+
     'Server.???????????_????? AS ??????'+
    ' FROM '+
    'Server, '+
    'Service '+
    'WHERE '+
    'Service.??????_?? = Server.ID ORDER BY Service.ID';
    DataModule2.ADOQService.Open;
  end;



end.
