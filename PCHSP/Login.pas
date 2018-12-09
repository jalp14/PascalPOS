unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TLoginS = class(TForm)
    LLBl1: TLabel;
    LLBL2: TLabel;
    LLBL3: TLabel;
    UName: TEdit;
    PWord: TMaskEdit;
    LBT1: TButton;
    ADOC2: TADOConnection;
    ADOL1: TADOQuery;
    LBT2: TButton;
    Image1: TImage;
    procedure LBT1Click(Sender: TObject);
    procedure LBT2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure UNameChange(Sender: TObject);
    procedure PWordChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginS: TLoginS;

implementation

{$R *.dfm}

uses Main, StaffMain, FPword, UserFrame, ABOUT, Splash;

procedure TLoginS.Label1Click(Sender: TObject);
begin
  AboutBox.show;
end;

procedure TLoginS.LBT1Click(Sender: TObject);
begin
    if UName.text = '' then
  Begin
    ShowMessage ('Enter username');
    UName.setfocus;
 end;
 if PWord.text = '' then
 Begin
  ShowMessage ('Enter password');
  PWord.setfocus;
 end;
 with ADOL1 do begin
     Close;
     SQL.Clear;
     SQL.Add('select * from login where Username='+
     QuotedStr(UName.Text));
     Open;
   end;

  if ADOL1.RecordCount = 0 then
       Application.MessageBox('Wrong Username Entered !!!!', 'Information',
       MB_OK or MB_ICONINFORMATION)
   else begin
     if ADOL1.FieldByName('Password').AsString <> PWord.Text
       then Application.MessageBox('Username or Password incorrect', 'Error',
       MB_OK or MB_ICONERROR)
   else begin
    if ADOL1.FieldByName('Type').AsString <> 'Admin' then
    Begin
    MainM.ALBL1.Caption := ('Welcome ' + UName.Text);
    MainM.ALBL2.Caption := (UName.Text);
    MainM.MBT4.Hide;
    MainM.MBT7.Hide;
    MainM.Show;
    End
    else Begin
    MainM.ALBL1.Caption := ('Welcome ' + UName.Text);
    MainM.ALBL2.Caption := (UName.Text);
    MainM.Show;


    End;



     end
   end;
end;


procedure TLoginS.LBT2Click(Sender: TObject);
begin
// Shows the Forgot Password Form
RPword.Show;

end;

procedure TLoginS.PWordChange(Sender: TObject);
begin
  PWord.MaxLength:= 10;
end;

procedure TLoginS.UNameChange(Sender: TObject);
begin
  UName.MaxLength := 10;
end;

End.
