unit ProdName;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  TProductName = class(TForm)
    F1LBL1: TLabel;
    F1LBL2: TLabel;
    F1LBL3: TLabel;
    F1LBL4: TLabel;
    F1ED1: TEdit;
    F1ED2: TEdit;
    F1BTN1: TButton;
    F1ED3: TEdit;
    ADOF1: TADOConnection;
    PLBL3: TLabel;
    PName: TComboBox;
    ADOFQ1: TADOQuery;
    ADOFT1: TADOTable;
    F2LBL1: TLabel;
    F2LBL2: TLabel;
    F2LBL3: TLabel;
    F2LBL4: TLabel;
    F2LBL5: TLabel;
    F2LBL6: TLabel;
    F2ED1: TEdit;
    F2ED2: TEdit;
    F2ED3: TEdit;
    F2ED4: TEdit;
    F2BT1: TButton;
    F2DBCM1: TDBLookupComboBox;
    ADOF2C1: TADOConnection;
    F2DS1: TDataSource;
    ADOF2T1: TADOTable;
    ADOF2T2: TADOTable;
    procedure F1BTN1Click(Sender: TObject);
    procedure PNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure F2BT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  comtext = maxint;
var
  ProductName: TProductName;
  scount : Integer;
  q, w, e : array[1..50] of string;
implementation

{$R *.dfm}


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





procedure TProductName.F1BTN1Click(Sender: TObject);
begin
  ADOFT1.Open;
  ADOFT1.Append;
  ADOFT1.Locate('ProductName' ,PName.Text, []);
  ADOFT1.Edit;
  ADOFT1.FieldByName('MinimumStock').AsString := F1ED1.Text;
  ADOFT1.FieldByName('CurrentStock').AsString := F1ED2.Text;
  ADOFT1.FieldByName('UnitPrice').AsString := F1ED3.Text;
  ADOFT1.Post;
  ShowMessage('Updated Successfully');

end;

procedure TProductName.F2BT1Click(Sender: TObject);
begin
  ADOF2T1.Open;
  ADOF2T1.Append;
  ADOF2T1.FieldByName('ProductName').AsString := F2ED1.Text;
  ADOF2T1.FieldByName('CurrentStock').AsString:= F2ED2.Text;
  ADOF2T1.FieldByName('MinimumStock').AsString:=F2ED3.Text;
  ADOF2T1.FieldByName('UnitPrice').AsString:= F2ED4.Text;
  ADOF2T1.FieldByName('SupplierID').AsString := F2DBCM1.KeyValue;
  ADOF2T1.Post;
  ShowMessage('Product Added Successfully');
end;

procedure TProductName.FormCreate(Sender: TObject);
var i : integer;
    x : String;
    t, j, size: integer;
tmp:string;
begin
   scount := 0;
   while not ADOFQ1.Eof do
   Begin
     x := ADOFQ1['ProductName'];
     PName.Items.Add(x);
     ADOFQ1.Next;
     scount := scount + 1;
   End;

   for i := 1 to scount do
   q[i]:= PName.Items[i-1];
   //Run MergeSort
   MergeSort(1, scount);
   for t:= 1 to scount do
   PName.Items[t-1]:=q[t]
end;




procedure TProductName.PNameChange(Sender: TObject);
begin
  ADOFT1.Open;
  ADOFT1.Append;
  ADOFT1.Locate('ProductName' ,PName.Text, []);
  F1ED1.Text := ADOFT1.FieldByName('MinimumStock').AsString;
  F1ED2.Text := ADOFT1.FieldByName('CurrentStock').AsString;
  F1ED3.Text := ADOFT1.FieldByName('UnitPrice').AsString;

end;

end.
