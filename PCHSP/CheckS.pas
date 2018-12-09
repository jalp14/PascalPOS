unit CheckS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls;

type
  TCStock = class(TForm)
    ADOTC1: TADOTable;
    ADOCS1: TADOConnection;
    DSCS1: TDataSource;
    DBGCS1: TDBGrid;
    CSEDT1: TEdit;
    CSLBL1: TLabel;
    CSLBL2: TLabel;
    ADOCQ1: TADOQuery;
    CCB1: TComboBox;
    CSLBL3: TLabel;
    procedure ResizeC(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure DBGrid(Sender: TObject);
    procedure CSEDT1Change(Sender: TObject);
    procedure CCB1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CStock: TCStock;

implementation

{$R *.dfm}

procedure TCStock.CCB1Change(Sender: TObject);
begin
  if CCB1.Text = 'Alphabetically' then
    ADOTC1.Sort := 'ProductName ASC'
  Else
  if CCB1.Text = 'Low to High Price' then
    ADOTC1.Sort := 'UnitPrice ASC'
  else
  if CCB1.Text = 'High to Low Price' then
    ADOTC1.Sort := 'UnitPrice DESC';

end;

procedure TCStock.CSEDT1Change(Sender: TObject);
begin
  if CSEDT1.Text <> '' then
  Begin
    ADOTC1.Filter := 'ProductName like ' + QuotedStr('*' +CSEDT1.Text+ '*');
    ADOTC1.Filtered := True;
  End
  Else
  ADOTC1.Filtered := False;
end;

procedure TCStock.DBGrid(Sender: TObject);
var
i : Integer;

begin
  for I := 0 to DBGCS1.Columns.Count - 1 do
  DBGCS1.Columns[i].Width := 10 + DBGCS1.Canvas.TextWidth(DBGCS1.Columns[i].Title.Caption)


end;

procedure TCStock.ResizeC(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
var
size : Integer;

begin
 size := 10 + DBGCS1.Canvas.TextExtent(Column.Field.DisplayText).cx;
  if size > column.Width then
  column.Width := size;

end;

end.
