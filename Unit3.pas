unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Button4: TButton;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    DBGrid3: TDBGrid;
    DBLookupComboBox4: TDBLookupComboBox;
    Label9: TLabel;
    Label13: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DBLookupComboBox5: TDBLookupComboBox;
    Label14: TLabel;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  //My
  date1,date2:String;
  CustID,ServesID,ServerID:Integer;
  dt1,dt2,diff:TDateTime;
  sum,cost:real;
  p:TPoint;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit5, Unit6, Unit7, Unit8;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if (Edit2.Text = '') and (Edit3.Text = '') and (DBLookupComboBox1.KeyValue = null) then begin
    Exit;
  end;

  {Customers.ID}
  DataModule2.ADOQTest.Close;
  DataModule2.ADOQTest.SQL.Text := 'SELECT ID, [????????], [???] '
  +' FROM Customers  WHERE ( ([????????] like "%' + Edit3.Text + '%") AND ([???] like "%' +Edit2.Text+'%") )';
  DataModule2.ADOQTest.Open;

  CustID := DataModule2.DataSTest.DataSet.Fields[0].AsInteger;

  {Serves.ID}
  ServesID := DBLookupComboBox1.KeyValue;

  {Server.ID}//+cost
  DataModule2.ADOQTest.Close;
  DataModule2.ADOQTest.SQL.Text:= 'Select  Server.ID, Service.[????] '
  +' FROM Service,Server  WHERE((Service.ID like '+IntToStr(DBLookupComboBox1.KeyValue)+') AND (Server.ID = Service.[??????_??]))';
  DataModule2.ADOQTest.Open;

  Cost := DataModule2.DataSTest.DataSet.Fields[1].AsInteger;
  ServerID := DataModule2.DataSTest.DataSet.Fields[0].AsInteger;

  dt1 := DateTimePicker1.Date;
  dt2 := DateTimePicker2.Date;

  if (dt1 > dt2) then
  begin
   diff := dt1;
   dt1 := dt2;
   dt2 := diff;
   Label1.Visible := true;
  end;

  diff := dt2 - dt1;
  sum := diff * cost;

  DataModule2.ADOQTest.Close;
  DataModule2.ADOQTest.SQL.Text:= 'INSERT INTO ConnectInfo ( [????], [?????_ID], [??????_ID],[?????????],[??????_ID],[????] ) values ( DateValue("' + DateTimeToStr(dt1) + '"), '+IntToStr(ServesID)+', '+IntToStr(CustID)+',  DateValue("' + DateTimeToStr(dt2) + '"), '+IntToStr(ServerID)+','+FloatToStr(sum)+')';
  DataModule2.ADOQTest.ExecSQL;

  DataModule2.ADOQConnnectInfo.Close;
  DataModule2.ADOQConnnectInfo.SQL.Text:= 'SELECT ConnectInfo.ID, ConnectInfo.[????], Service.[?????], (Customers.[????????] & " " + Customers.[???]) AS ??????, ConnectInfo.[?????????], ConnectInfo.[????] ' +
  'FROM ConnectInfo, Customers, Service ' +
  'WHERE ( ConnectInfo.[?????_ID] = Service.ID AND ConnectInfo.[??????_ID] = Customers.ID )';
  DataModule2.ADOQConnnectInfo.Open;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
   Form6.QuickRep1.PreviewModal;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
    //Clean
    DBLookupComboBox2.KeyValue := null;
    DBLookupComboBox3.KeyValue := null;
    DBLookupComboBox4.KeyValue := null;

    //Update
    DataModule2.ADOQSlave.Close;
    DataModule2.ADOQSlave.SQL.Text:='SELECT (Slave.[????????] & " " + Slave.[???]) AS ????????????, Slave.[??????], Slave.[???????] FROM Slave ';
    DataModule2.ADOQSlave.Open;
end;


procedure TForm3.Button6Click(Sender: TObject);
begin
    Edit1.clear;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
   Edit2.clear;
   Edit3.clear;
   DBLookupComboBox1.KeyValue:=null;
   DateTimePicker1.Date:=now;
   DateTimePicker2.Date:=now;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
 Form7.QuickRep1.PreviewModal;
end;

procedure TForm3.DBGrid2CellClick(Column: TColumn);
begin
    Edit2.Text:=DBGrid2.Fields[2].AsString;
    Edit3.Text:=DBGrid2.Fields[1].AsString;
end;

procedure TForm3.DBLookupComboBox2Click(Sender: TObject);
begin
  DBLookupComboBox3.KeyValue:=null;
  DBLookupComboBox4.KeyValue:=null;
  DBLookupComboBox5.KeyValue:=null;
  DataModule2.ADOQSlave.Close;
  DataModule2.ADOQSlave.SQL.Text :=
  'SELECT '+
    '(Slave.[????????] & " " + Slave.[???]) AS ????????????, '+
    'Slave.[??????], '+
    'Slave.[???????] '+
  'FROM '+
  '  Slave INNER JOIN ConnectInfo ON Slave.[ID_?????????]=ConnectInfo.[??????_ID] '+
  'WHERE( '+
    'ConnectInfo.ID = ' + IntToStr(DBLookupComboBox2.KeyValue) +
  ')';
  DataModule2.ADOQSlave.Open;
end;


procedure TForm3.DBLookupComboBox3Click(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue:=null;
  DBLookupComboBox4.KeyValue:=null;
  DBLookupComboBox5.KeyValue:=null;
  DataModule2.ADOQSlave.Close;
  DataModule2.ADOQSlave.SQL.Text :=
  'SELECT '+
    ' (Slave.[????????] & " " + Slave.[???]) AS ????????????, '+
    ' Slave.[??????], '+
    ' Slave.[???????] '+
  ' FROM '+
    ' Slave INNER JOIN Server ON Slave.[ID_?????????]=Server.ID '+
  ' WHERE('+
   ' Slave.[ID_?????????] = '+IntToStr(DBLookupComboBox3.KeyValue)+''+
  ' )';
  DataModule2.ADOQSlave.Open;
end;

procedure TForm3.DBLookupComboBox4Click(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue:=null;
  DBLookupComboBox3.KeyValue:=null;
  DBLookupComboBox5.KeyValue:=null;
  DataModule2.ADOQSlave.Close;
   DataModule2.ADOQSlave.SQL.Text :=
   'SELECT' +
      ' (Slave.[????????] & " " + Slave.[???]) AS ????????????, '+
      ' Slave.[??????], '+
      ' Slave.[???????] '+
    ' FROM '+
      ' Slave '+
    ' WHERE('+
     ' Slave.[??????] = "'+DBLookupComboBox4.KeyValue+'" '+
    ')';
   DataModule2.ADOQSlave.Open;
end;

procedure TForm3.DBLookupComboBox5Click(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue:=null;
  DBLookupComboBox3.KeyValue:=null;
  DBLookupComboBox4.KeyValue:=null;
  DataModule2.ADOQSlave.Close;
  DataModule2.ADOQSlave.SQL.Text :=
  'SELECT '+
    '(Slave.[????????] & " " + Slave.[???]) AS ????????????, '+
    'Slave.[??????], '+
    'Slave.[???????] '+
  'FROM '+
  '  Slave INNER JOIN Service ON Slave.[ID_?????????]=Service.[??????_??] '+
  'WHERE( '+
    'Service.ID = '+IntToStr(DBLookupComboBox5.KeyValue)+ ''+
  ')';
  DataModule2.ADOQSlave.Open;

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
  DataModule2.ADOQCustomers.Close;
  DataModule2.ADOQCustomers.SQL.Text:= 'SELECT Customers.ID,  Customers.[????????], Customers.[???], Customers.[???????], Customers.[e-mail] '
  +' FROM Customers  WHERE Customers.[????????] like "%'+Edit1.Text+'%" ORDER BY Customers.ID';
  DataModule2.ADOQCustomers.Open;
end;

procedure TForm3.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  If DBLookupComboBox1.Focused then begin
     If (WheelDelta < 0) then begin
        DBLookupComboBox1.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBLookupComboBox1.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

   If DBLookupComboBox2.Focused then begin
     If (WheelDelta < 0) then begin
        DBLookupComboBox2.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBLookupComboBox2.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

   If DBLookupComboBox3.Focused then begin
     If (WheelDelta < 0) then begin
        DBLookupComboBox3.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBLookupComboBox3.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

   If DBLookupComboBox4.Focused then begin
     If (WheelDelta < 0) then begin
        DBLookupComboBox4.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBLookupComboBox4.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

   If DBLookupComboBox5.Focused then begin
     If (WheelDelta < 0) then begin
        DBLookupComboBox5.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBLookupComboBox5.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

    If DBGrid1.Focused then begin
     If (WheelDelta < 0) then begin
        DBGrid1.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBGrid1.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

     If DBGrid2.Focused then begin
     If (WheelDelta < 0) then begin
        DBGrid2.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBGrid2.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

     If DBGrid3.Focused then begin
     If (WheelDelta < 0) then begin
        DBGrid3.Perform(WM_KEYDOWN, VK_DOWN, 0)
     end
     else begin
        DBGrid3.Perform(WM_KEYDOWN, VK_UP, 0);
     end;
  end;

  Handled := True;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  DataModule2.ADOQConnnectInfo.Close;
  DataModule2.ADOQConnnectInfo.SQL.Text:= 'SELECT ConnectInfo.ID, ConnectInfo.[????], Service.[?????], (Customers.[????????] & " " + Customers.[???]) AS ??????, ConnectInfo.[?????????], ConnectInfo.[????] ' +
  'FROM ConnectInfo, Customers, Service ' +
  'WHERE ( ConnectInfo.[?????_ID] = Service.ID AND ConnectInfo.[??????_ID] = Customers.ID )';
  DataModule2.ADOQConnnectInfo.Open;

  DateTimePicker1.Date:=now;
  DateTimePicker2.Date:=now;
end;

procedure TForm3.N1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
 Form8.Show();
end;

procedure TForm3.N3Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm3.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  I: Integer;
  PageControl: TPageControl;
  TextFormat: TTextFormat;
  Text: string;
  TextRect: TRect;
begin
  PageControl:=Control as TPageControl;

  Text:=sLineBreak + PageControl.Pages[TabIndex].Caption;

  for I:=Length(Text) - 1 downto 1 do
  begin
    Text:=Copy(Text, 1, I) + '' + Copy(Text, I+1, MaxInt);
  end;

  TextRect:=Rect;
  TextRect.Left:=TextRect.Left + 5;
  TextRect.Top:=TextRect.Top + 3;

  TextFormat := [tfCenter];

  PageControl.Canvas.TextRect(
    TextRect,
    Text,
    TextFormat
    );
end;

procedure TForm3.TabSheet1Show(Sender: TObject);
begin
  DBGrid1.SetFocus;
end;

procedure TForm3.TabSheet2Show(Sender: TObject);
begin
  DBGrid3.SetFocus;
end;

end.

