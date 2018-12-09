unit Staff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Data.Win.ADODB;

type
  TSManagement = class(TForm)
    Name: TLabeledEdit;
    Surname: TLabeledEdit;
    Address: TLabeledEdit;
    Postcode: TLabeledEdit;
    Phone: TLabeledEdit;
    SLB1: TLabel;
    DTP1: TDateTimePicker;
    SBT1: TButton;
    SLB2: TLabel;
    SBT2: TButton;
    SBT3: TButton;
    StaffID: TLabeledEdit;
    ADOC1: TADOConnection;
    ADOStaff: TADOTable;
    Label1: TLabel;
    DTP2: TDateTimePicker;
    SLB3: TLabel;
    EmailA: TLabeledEdit;
    procedure StaffIDChange(Sender: TObject);
    procedure SBT2Click(Sender: TObject);
    procedure SBT3Click(Sender: TObject);
    procedure SLB3Click(Sender: TObject);
    procedure SBT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SManagement: TSManagement;

implementation

{$R *.dfm}

uses LogoutDialog;

procedure TSManagement.SBT1Click(Sender: TObject);
begin
  DTP1.Date := date();
  ADOStaff.Open;
  ADOStaff.Edit;
  ADOStaff['FirstName'] := Name.Text;
  ADOStaff['Surname'] := Surname.Text;
  ADOStaff['Address'] := Address.Text;
  ADOStaff['Postcode'] := Postcode.Text;
  ADOStaff['Phone'] := Phone.Text;
  ADOStaff['DOB'] := DTP2.Date;
  ADOStaff['DOR'] := DTP1.Date;
  ADOStaff['Email'] := EmailA.Text;
  ADOStaff.Post;

end;

procedure TSManagement.SBT2Click(Sender: TObject);
begin
  ADOStaff.Open;
  ADOStaff.Append;
  ADOStaff.Edit;
  ADOStaff.Locate('StaffID' ,StaffID.Text, []);
 // ADOStaff.Edit;
  ADOStaff.Delete;
  ADOStaff.Post;
end;

procedure TSManagement.SBT3Click(Sender: TObject);
Begin
  ADOStaff.Open;
  ADOStaff.Locate('StaffID' ,StaffID.Text, []);
  ADOStaff.Edit;
  ADOStaff.FieldByName('FirstName').AsString := Name.Text;
  ADOStaff.FieldByName('Surname').AsString := Surname.Text;
  ADOStaff.FieldByName('Address').AsString := Address.Text;
  ADOStaff.FieldByName('Postcode').AsString := Postcode.Text;
  ADOStaff.FieldByName('Phone').AsString:= Phone.Text;
  ADOStaff.FieldByName('DOB').AsString := DateToStr (DTP2.Date);
  ADOStaff.FieldByName('DOR').AsString := DateToStr(DTP1.Date);
  ADOStaff.Post;
  ShowMessage('Updated Successfully');
end;

procedure TSManagement.SLB3Click(Sender: TObject);
begin
  LogoutBox.show;
end;

procedure TSManagement.StaffIDChange(Sender: TObject);
begin
ADOStaff.Open;
ADOStaff.Append;
ADOStaff.Locate('StaffID' ,StaffID.Text,[]);
Name.Text := ADOStaff['FirstName'];
Surname.Text := ADOStaff ['Surname'];
Address.Text := ADOStaff ['Address'];
Postcode.Text := ADOStaff ['Postcode'];
Phone.Text := ADOStaff ['Phone'];
DTP2.Date := StrToDate (ADOStaff ['DOB']);
DTP1.Date := StrToDate (ADOStaff ['DOR']);
EmailA.Text := ADOStaff['Email'];

end;

end.
