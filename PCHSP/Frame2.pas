unit Frame2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls;

type
  TFM2 = class(TFrame)
    F2LBL1: TLabel;
    F2LBL2: TLabel;
    F2ED1: TEdit;
    F2LBL3: TLabel;
    F2ED2: TEdit;
    F2LBL4: TLabel;
    F2ED3: TEdit;
    F2LBL5: TLabel;
    F2ED4: TEdit;
    F2BT1: TButton;
    ADOF2C1: TADOConnection;
    F2LBL6: TLabel;
    F2DS1: TDataSource;
    F2DBCM1: TDBLookupComboBox;
    ADOF2T1: TADOTable;
    ADOF2T2: TADOTable;
    procedure F2BT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFM2.F2BT1Click(Sender: TObject);
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

end.
