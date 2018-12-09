unit Customer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Imaging.jpeg, Vcl.Grids, Vcl.DBGrids;

type
  TCustManagement = class(TForm)
    Name: TLabeledEdit;
    Surname: TLabeledEdit;
    Address: TLabeledEdit;
    Postcode: TLabeledEdit;
    Phone: TLabeledEdit;
    Gender: TLabeledEdit;
    CLBL2: TLabel;
    DTPC1: TDateTimePicker;
    CBT1: TButton;
    CBT2: TButton;
    CBT3: TButton;
    CLBL1: TLabel;
    ADOCM1: TADOConnection;
    ADOTCM1: TADOTable;
    CustomerID: TLabeledEdit;
    CLBL3: TLabel;
    DBGC1: TDBGrid;
    DSC1: TDataSource;
    procedure CBT1Click(Sender: TObject);
    procedure CustomerIDChange(Sender: TObject);
    procedure CBT2Click(Sender: TObject);
    procedure CBT3Click(Sender: TObject);
    procedure CLBL3Click(Sender: TObject);
    procedure DBGrids(Sender: TObject);
    procedure ResizeGrid(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure NameChange(Sender: TObject);
    procedure SurnameChange(Sender: TObject);
    procedure AddressChange(Sender: TObject);
    procedure PostcodeChange(Sender: TObject);
    procedure GenderChange(Sender: TObject);
    procedure PhoneChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustManagement: TCustManagement;

implementation

{$R *.dfm}

uses Login, LogoutDialog;

procedure TCustManagement.AddressChange(Sender: TObject);
begin
  Address.MaxLength := 50;
end;

procedure TCustManagement.CBT1Click(Sender: TObject);
begin
  ADOTCM1.Open;
  ADOTCM1.Insert;
  ADOTCM1.FieldByName('FirstName').AsString := Name.Text;
  ADOTCM1.FieldByName('Surname').AsString := Surname.Text;
  ADOTCM1.FieldByName('Address').AsString := Address.Text;
  ADOTCM1.FieldByName('Postcode').AsString := Postcode.Text;
  ADOTCM1.FieldByName('Gender').AsString := Gender.Text;
  ADOTCM1.FieldByName('PhoneNumber').AsString := Phone.Text;
  ADOTCM1.FieldByName('DOB').AsString := DateToStr(DTPC1.Date);
  ADOTCM1.Post;
  ShowMessage('Customer Successfully Registered');





end;

procedure TCustManagement.CBT2Click(Sender: TObject);
begin
  ADOTCM1.Open;
  ADOTCM1.Locate('CustomerID' ,CustomerID.Text, []);
  ADOTCM1.Edit;
  ADOTCM1.Delete;
  ShowMessage('Customer Successfully Deleted');
end;

procedure TCustManagement.CBT3Click(Sender: TObject);
begin
  ADOTCM1.Open;
  ADOTCM1.Append;
  ADOTCM1.Locate('CustomerID' ,CustomerID.Text, []);
  ADOTCM1.Edit;
  ADOTCM1.FieldByName('FirstName').AsString := Name.Text;
  ADOTCM1.FieldByName('Surname').AsString := Surname.Text;
  ADOTCM1.FieldByName('Address').AsString := Address.Text;
  ADOTCM1.FieldByName('Postcode').AsString := Postcode.Text;
  ADOTCM1.FieldByName('Gender').AsString := Gender.Text;
  ADOTCM1.FieldByName('PhoneNumber').AsString := Phone.Text;
  ADOTCM1.FieldByName('DOB').AsString := DateToStr(DTPC1.Date);
  ADOTCM1.Post;

ShowMessage('Customer Record Successfully Updated');
end;

procedure TCustManagement.CLBL3Click(Sender: TObject);
begin
 LogoutBox.show;
end;

procedure TCustManagement.CustomerIDChange(Sender: TObject);
begin
ADOTCM1.Open;
ADOTCM1.Append;
ADOTCM1.Locate('CustomerID' ,CustomerID.Text, []);
if ADOTCM1.FieldByName('CustomerID').AsString <> CustomerID.Text then
ShowMessage('Customer ID does not exist');
Name.Text := ADOTCM1['FirstName'];
Surname.Text := ADOTCM1['Surname'];
Address.Text := ADOTCM1['Address'];
Phone.Text := ADOTCM1['PhoneNumber'];
Postcode.Text := ADOTCM1['Postcode'];
Gender.Text := ADOTCM1['Gender'];
DTPC1.Date := StrToDate (ADOTCM1['DOB']);


end;
procedure TCustManagement.DBGrids(Sender: TObject);
var i : Integer;
begin
    for I := 0 to DBGC1.Columns.Count - 1 do
    DBGC1.Columns[i].Width := 20 + DBGC1.Canvas.TextWidth(DBGC1.Columns[i].Title.Caption)

end;

procedure TCustManagement.GenderChange(Sender: TObject);
begin
  Gender.MaxLength := 1;
end;

procedure TCustManagement.NameChange(Sender: TObject);
begin
 Name.MaxLength := 25;

end;

procedure TCustManagement.PhoneChange(Sender: TObject);
begin
  Phone.MaxLength:= 14;
end;

procedure TCustManagement.PostcodeChange(Sender: TObject);
begin
  Postcode.MaxLength := 8;

end;

procedure TCustManagement.ResizeGrid(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
size : Integer;
  begin
  size := 20 + DBGC1.Canvas.TextExtent(Column.Field.DisplayText).cx;
  if size > column.Width then
  column.Width := size;
end;

procedure TCustManagement.SurnameChange(Sender: TObject);
begin
 Surname.MaxLength := 25;
end;

end.
