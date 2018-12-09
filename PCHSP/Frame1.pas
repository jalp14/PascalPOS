unit Frame1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls;

type
  TFM1 = class(TFrame)
    F1LBL1: TLabel;
    F1LBL2: TLabel;
    F1ED1: TEdit;
    F1LBL3: TLabel;
    F1ED2: TEdit;
    F1BTN1: TButton;
    F1LBL4: TLabel;
    F1ED3: TEdit;
    ADOF1: TADOConnection;
    PLBL3: TLabel;
    PName: TComboBox;
    ADOFQ1: TADOQuery;
    procedure F1DCM1Click(Sender: TObject);
    procedure F1BTN1Click(Sender: TObject);
    procedure FrameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  comtext = maxint;

var
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



procedure TFM1.F1DCM1Click(Sender: TObject);
begin
{.Open;
ADOFT1.Append;
ADOFT1.Locate('ProductName' ,F1DCM1.Text, []);
F1ED1.Text := ADOFT1.FieldByName('MinimumStock').AsString;
F1ED2.Text := ADOFT1.FieldByName('CurrentStock').AsString;
F1ED3.Text := ADOFT1.FieldByName('UnitPrice').AsString;
 }
end;


procedure TFM1.FrameClick(Sender: TObject);
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

procedure TFM1.F1BTN1Click(Sender: TObject);
begin
  {ADOFT1.Open;
  ADOFT1.Append;
  ADOFT1.Locate('ProductName' ,F1DCM1.Text, []);
  ADOFT1.Edit;
  ADOFT1.FieldByName('MinimumStock').AsString := F1ED1.Text;
  ADOFT1.FieldByName('CurrentStock').AsString := F1ED2.Text;
  ADOFT1.FieldByName('UnitPrice').AsString := F1ED3.Text;
  ADOFT1.Post;
  ShowMessage('Updated Successfully');

   }
end;

end.
