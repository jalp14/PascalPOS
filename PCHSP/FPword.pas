unit FPword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage, Data.DB, Data.Win.ADODB;

type
  TRPword = class(TForm)
    MainLBL1: TLabel;
    LLBL1: TLabel;
    LLBL3: TLabel;
    UName: TEdit;
    LBT2: TButton;
    CMB1: TComboBox;
    LLBL2: TLabel;
    SName: TEdit;
    IdMSg: TIdMessage;
    IdSMTP: TIdSMTP;
    SSLOpenSocket: TIdSSLIOHandlerSocketOpenSSL;
    ADOQR1: TADOQuery;
    ADOCNR1: TADOConnection;
    LLBL4: TLabel;
    EmailText: TEdit;
    ADORPT1: TADOTable;
    procedure LBT2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPword: TRPword;

implementation

{$R *.dfm}

Procedure SendMail(username, password, recipient, subject, mainbody : String);
var
  Data :  TIdMessage;
  SMTP : TIdSMTP;
  SSl : TIdSSLIOHandlerSocketOpenSSL;
Begin
  // Setting up connection to Google's SMTP
  SMTP := TIdSMTP.Create(nil);
  DATA := TIdMessage.Create(nil);
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  SSL.SSLOptions.Method := sslvTLSv1;
  SSL.SSLOptions.Mode := sslmUnassigned;
  SSL.SSLOptions.VerifyMode := [];
  SSL.SSLOptions.VerifyDepth := 0;

  DATA.From.Address := username;
  DATA.Recipients.EMailAddresses := recipient;
  DATA.subject := subject;
  DATA.body.text := mainbody;

  SMTP.IOHandler := SSL;
  SMTP.Host := 'smtp.gmail.com';
  SMTP.Port := 587;
  SMTP.username := username;
  SMTP.password := password;
  SMTP.UseTLS := utUseExplicitTLS;

  SMTP.Connect;
  SMTP.Send(DaTa);
  SMTP.Disconnect;

  SMTP.Free;
  DATA.Free;
  SSL.Free;

End;

procedure TRPword.LBT2Click(Sender: TObject);
var
  mailusername, mailpassword, mailto, mailsub, mailbody : String;
  pword : String;
begin
  // Cross checking details entered against database using sql
  ADOQR1.SQL.Clear;
  ADOQR1.SQL.Add('Select * From StaffDetails ');
  ADOQR1.SQL.Add('Where Firstname = :FirstName AND');
  ADOQR1.SQL.Add('Surname = :Surname AND');
  ADOQR1.SQL.Add('Email = :EmailAdd');
  ADOQR1.Parameters.ParamByName('FirstName').Value := UName.Text;
  ADOQR1.Parameters.ParamByName('Surname').Value := SName.Text;
  ADOQR1.Parameters.ParamByName('EmailAdd').Value := EmailText.Text;
  ADOQR1.ExecSQL;
  ADOQR1.Open;
  if  ADOQR1.RecordCount = 0 then
  ShowMessage('One of the details entered is incorrect')
  Else
  Begin
  ADOQR1.SQL.Clear;
  ADOQR1.SQL.Add('Select Password From Login ');
  ADOQR1.SQL.Add('Where Username = :FirstN AND ');
  ADOQR1.SQL.Add('Type = :StaffType');
  ADOQR1.Parameters.ParamByName('FirstN').Value := UName.Text;
  ADOQR1.Parameters.ParamByName('StaffType').Value := CMB1.Text;
  ADOQR1.ExecSQL;
  ADOQR1.Open;
  pword := ADOQR1.FieldByName('Password').AsString;
  mailusername := 'staffpchsp@gmail.com';
  mailpassword := 'Jalp5257';
  mailto := EmailText.Text;
  mailsub:= 'Password Reset Request';
  mailbody := ('Your password is ' + pword);
  ShowMessage('Your password has been emailed to you');
  try
  Begin
    SendMail(mailusername, mailpassword, mailto, mailsub, mailbody);
  end;
  finally
    // None
 end;
   end;

  end;

end.
