unit Order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXCtrls, System.UITypes, Vcl.AppAnalytics,
  frxClass;

type
  TPlaceOrder = class(TForm)
    PLBL1: TLabel;
    ADOPC1: TADOConnection;
    DSP1: TDataSource;
    PLBL2: TLabel;
    DSP2: TDataSource;
    PLBL3: TLabel;
    DBCM1: TDBLookupComboBox;
    LED2: TLabeledEdit;
    LED3: TLabeledEdit;
    LED1: TLabeledEdit;
    PBTN1: TButton;
    DSP3: TDataSource;
    DSP4: TDataSource;
    PLBL4: TLabel;
    ADOPQ1: TADOQuery;
    DSP5: TDataSource;
    ADOPT1: TADOTable;
    ADOPT2: TADOTable;
    ADOPT3: TADOTable;
    ADOPT4: TADOTable;
    ADOPT5: TADOTable;
    ADOPQ2: TADOQuery;
    FR1: TfrxReport;
    ProdName: TComboBox;
    procedure PBTN1Click(Sender: TObject);
    procedure DBCM2Click(Sender: TObject);
    procedure LED2Change(Sender: TObject);
    procedure PLBL4Click(Sender: TObject);
    procedure demo(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure ProdNameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  comtext = maxint;

var
  PlaceOrder: TPlaceOrder;
  Count : Integer;
  datef : TDateTime;
  custid, nstock, rqty, oqty : integer;
  nprice, sid, x, SName : String;
  uprice, fprice : Double;
  nqty : real;
  id : Integer;
  scount : Integer;
  q, w, e : array[1..50] of string;


implementation

{$R *.dfm}

uses Invoice, ConOrd, LogoutDialog, Login;


Procedure Merge (l, s, d : integer);
var v, b, n : integer;
comtext : String;
Begin
  comtext:= 'aaaaaaaaaaaa';
  for v := 1 to s do
    w[v] := q[v];

    v := 1;
    w[s+1]:= comtext;

    for b := s+1 to d do
        e[b] := q[b];
    b:= s+1;
    e[d+1] := comtext;
    n := 1;
    while (w[v]<comtext) or (e[b]<comtext) do
     if w[v]<e[b] then
         begin q[n] := w[v];
               inc (v);
               inc(n);
         end
         else
         begin
            q[n] := e[b];
            inc (b);
            inc(n);
         end;
end;

Procedure MergeSort (l, d : integer);
var s : integer;
Begin
  if l < d then
  Begin
    s := (l+d) div 2;
    MergeSort(l, s);
    MergeSort(s+1, d);
    Merge(l, s, d);
  End;
End;





procedure TPlaceOrder.DBCM2Click(Sender: TObject);
begin
ADOPT2.Open;
ADOPT2.Locate('ProductName', DBCM1.Text, []);
LED1.Text := ADOPT2['UnitPrice'];
LED3.Text := ADOPT2['CurrentStock'];
end;

procedure TPlaceOrder.demo(const VarName: string; var Value: Variant);
begin

  if CompareText(VarName, 'Product') = 0 then
  Value :=  ProdName.Text;
  if CompareText(VarName, 'Quantity') = 0 then
  Value := LED2.Text;
  if CompareText(VarName, 'Price') = 0 then
  Value := fprice;
  if CompareText(VarName, 'SName') = 0 then
  Value := SName;
end;

procedure TPlaceOrder.FormCreate(Sender: TObject);
var i : integer;
    x : String;
    t, j, size: integer;
tmp:string;
begin
   scount := 0;
   while not ADOPQ2.Eof do
   Begin
     x := ADOPQ2['ProductName'];
     ProdName.Items.Add(x);
     ADOPQ2.Next;
     scount := scount + 1;
   End;

   for i := 1 to scount do
   q[i]:= ProdName.Items[i-1];
   //Run MergeSort
   MergeSort(1, scount);
   for t:= 1 to scount do
   ProdName.Items[t-1]:=q[t]

end;

procedure TPlaceOrder.LED2Change(Sender: TObject);
begin
  if LED2.Text > LED3.Text then
  Begin
    ShowMessage('Quantity entered is not in stock');
    LED2.SetFocus;
  End;

end;

procedure TPlaceOrder.PBTN1Click(Sender: TObject);
Begin
  // Locating Product Details and Calcuating Costs
  ADOPT2.Open;
  ADOPT2.Locate('ProductName' ,ProdName.Text,[]);
  sid := ADOPT2['StockID'];
  uprice := ADOPT2.FieldByName('UnitPrice').AsCurrency;
  rqty := StrToInt(LED2.Text);
  fprice:= (uprice * rqty);
  nprice:= FloatToStrF(fprice,ffCurrency,5,2);
  custid := StrToInt(DBCM1.Text);
  datef := Date();
  oqty := ADOPT2.FieldByName('CurrentStock').AsInteger;
  nstock := oqty - rqty;

   // Adding Details to the OrderFile
  ADOPT3.Insert;
  ADOPT3.FieldByName('DateofOrder').AsDateTime := (datef);
  ADOPT3.FieldByName('TotalPrice').AsFloat := fprice;
  ADOPT3.FieldByName('CustomerID').AsString := IntToStr(custid);
  ADOPT3.Post;
  id := ADOPT3.FieldByName('OrderID').AsInteger;

// Adding Details to OrderToStockFile
  ADOPT5.Open;
  ADOPT5.Insert;
  ADOPT5['OrderID'] := id;
  ADOPT5['StockID'] := ADOPT2['StockID'];
  ADOPT5['Quantity'] := rqty;
  ADOPT5['Cost'] := fprice;
  ADOPT5.Post;

    // Adding Data to Payment File
  ADOPT4.Open;
  ADOPT4.Append;
  ADOPT4.FieldByName('Amount').AsFloat := fprice;
  ADOPT4.FieldByName('OrderID').AsInteger := id;
  ADOPT4.Post;

 ShowMessage('Order Placed Successfully');

 SName := LoginS.UName.Text;

 FR1.ShowReport();



End;













procedure TPlaceOrder.PLBL4Click(Sender: TObject);
begin
  LogoutBox.show;
end;

procedure TPlaceOrder.ProdNameChange(Sender: TObject);
begin
  ADOPT2.Open;
  ADOPT2.Locate('ProductName' ,ProdName.Text,[]);
  LED1.Text := ADOPT2.FieldByName('UnitPrice').AsString;
  LED3.Text := ADOPT2.FieldByName('CurrentStock').AsString;
end;

end.
