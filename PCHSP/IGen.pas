unit IGen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, frxClass, frxDBSet;

type
  TInvGen = class(TForm)
    ADOIC1: TADOConnection;
    ADOIQ1: TADOQuery;
    DSI1: TDataSource;
    DBGI1: TDBGrid;
    ILBL1: TLabel;
    ILBL2: TLabel;
    CSLBL3: TLabel;
    ICB1: TComboBox;
    frxDBDataset1: TfrxDBDataset;
    ADOIQ2: TADOQuery;
    Button1: TButton;
    FR1: TfrxReport;
    procedure IBTN1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Demo(const VarName: string; var Value: Variant);
    procedure ICB1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvGen: TInvGen;
  temp, OID, CID, CName, CSurame, CAddress, CPostcode, CPhone, CUnitPrice, CSID, CProdName, CPrice, CQuantity, CDate : String;
  Inv : Integer;
  DFile : TextFile;



implementation

{$R *.dfm}

procedure TInvGen.Button1Click(Sender: TObject);
begin
CPrice := ADOIQ1.FieldByName('Amount').AsString;
OID := ADOIQ1.FieldByName('OrderID').AsString;
//SQL Queries  OrderTable
ADOIQ2.SQL.Clear;
ADOIQ2.SQL.Add('Select DateofOrder, CustomerID from OrderFile');
ADOIQ2.SQL.Add('Where OrderID = :OrderNumber');
ADOIQ2.Parameters.ParamByName('OrderNumber').Value := OID;
ADOIQ2.Open;
//Fetching CustomerID and DateofOrder
CID:= ADOIQ2.FieldByName('CustomerID').AsString;
CDate := ADOIQ2.FieldByName('DateofOrder').AsString;

//SQL Queries CustomerTable
ADOIQ2.SQL.Clear;
ADOIQ2.SQL.Add('Select * from Customer');
ADOIQ2.SQL.Add('Where CustomerID = :CID');
ADOIQ2.Parameters.ParamByName('CID').Value := CID;
ADOIQ2.Open;
//Fetching Name, Surname, Address and Postcode
CName:= ADOIQ2.FieldByName('FirstName').AsString;
CSurame:= ADOIQ2.FieldByName('Surname').AsString;
CAddress:= ADOIQ2.FieldByName('Address').AsString;
CPostcode:= ADOIQ2.FieldByName('Postcode').AsString;
CPhone:= ADOIQ2.FieldByName('PhoneNumber').AsString;
//SQL Queries OrdertoStockTable
ADOIQ2.SQL.Clear;
ADOIQ2.SQL.Add('Select * from OrderToStock');
ADOIQ2.SQL.Add('Where OrderID = :OID');
ADOIQ2.Parameters.ParamByName('OID').Value := OID;
ADOIQ2.Open;
//Fetching Quantity and StockID
CQuantity := ADOIQ2.FieldByName('Quantity').AsString;
CSID:= ADOIQ2.FieldByName('StockID').AsString;

//SQl Queries StockFileTable
ADOIQ2.SQL.Clear;
ADOIQ2.SQL.Add('Select * from StockFile');
ADOIQ2.SQL.Add('Where StockID = :SID');
ADOIQ2.Parameters.ParamByName('SID').Value := CSID;
ADOIQ2.Open;
//Fetching ProductName and UnitPrice
CProdName:= ADOIQ2.FieldByName('ProductName').AsString;
CUnitPrice:= ADOIQ2.FieldByName('UnitPrice').AsString;

//Invoice Nuber in TXT File
AssignFile(DFile, 'InvoiceN.txt');
Reset(DFile);
Readln(DFile, Inv);
CloseFile(DFile);
Inv := Inv + 1;
AssignFile(DFile,'InvoiceN.txt' );
Rewrite(DFile);
Writeln(DFile, Inv);
CloseFile(DFile);

//Show Report
FR1.ShowReport();


end;

procedure TInvGen.Demo(const VarName: string; var Value: Variant);
begin
  if CompareText(VarName, 'CName') = 0 then
  Value := CName;
  if CompareText(VarName, 'CSurname') = 0 then
  Value := CSurame;
   if CompareText(VarName, 'CAddress') = 0 then
  Value := CAddress;
   if CompareText(VarName, 'CPostcode') = 0 then
  Value := CPostcode;
   if CompareText(VarName, 'CPhone') = 0 then
  Value := CPhone;
   if CompareText(VarName, 'CProduct') = 0 then
  Value := CProdName;
   if CompareText(VarName, 'CUnit') = 0 then
  Value := ( '£' + CUnitPrice);
   if CompareText(VarName, 'CQty') = 0 then
  Value := CQuantity;
   if CompareText(VarName, 'CAmount') = 0 then
  Value := ('£' + CPrice);
    if CompareText(VarName, 'CDate') = 0 then
  Value := Date();
    if CompareText(VarName, 'InvNo') = 0 then
  Value := Inv;
    if CompareText(VarName, 'CID') = 0 then
  Value := CID;
end;

procedure TInvGen.IBTN1Click(Sender: TObject);
begin
{  if ICB1.Text = 'Paid' then
  Begin
  ADOIQ1.SQL.Clear;
  ADOIQ1.SQL.Add('Select * from PaymentFile');
  ADOIQ1.SQL.Add('Order By Paid DESC');
  ADOIQ1.Open;
  End
  Else
  if ICB1.Text = 'Amount' then
  Begin
    ADOIQ1.SQL.Clear;
    ADOIQ1.SQL.Add('Select * from PaymentFile');
    ADOIQ1.SQL.Add('Order By Amount ASC');
    ADOIQ1.Open;
  End; }
end;

procedure TInvGen.ICB1Change(Sender: TObject);
begin
  if ICB1.Text = 'Not Paid' then
  Begin
    ADOIQ1.SQL.Clear;
    ADOIQ1.SQL.Add('Select * from PaymentFile');
    ADOIQ1.SQL.Add('Where Paid = False');
    ADOIQ1.Open;
  End
  Else
  if ICB1.Text = 'Paid' then
  Begin
    ADOIQ1.SQL.Clear;
    ADOIQ1.SQL.Add('Select * from PaymentFile');
    ADOIQ1.SQL.Add('Where Paid = True');
    ADOIQ1.Open;
  End
  Else
  if ICB1.Text = 'Low to High Price' then
  Begin
    ADOIQ1.SQL.Clear;
    ADOIQ1.SQL.Add('Select * from PaymentFile');
    ADOIQ1.SQL.Add('Order By  Amount ASC');
    ADOIQ1.Open;
  End
  Else
  if ICB1.Text = 'High to Low Price' then
  Begin
    ADOIQ1.SQL.Clear;
    ADOIQ1.SQL.Add('Select * from PaymentFile');
    ADOIQ1.SQL.Add('Order By Amount DESC');
    ADOIQ1.Open;
  End
  Else
  if ICB1.Text = 'None' then
  Begin
    ADOIQ1.SQL.Clear;
    ADOIQ1.SQL.Add('Select * from PaymentFile');
    ADOIQ1.Open;
  End;
end;

end.

