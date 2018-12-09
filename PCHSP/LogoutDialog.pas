unit LogoutDialog;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TLogoutBox = class(TForm)
    LogBtn: TButton;
    CancelBtn: TButton;
    LLBL11: TLabel;
    procedure LogBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogoutBox: TLogoutBox;

implementation

{$R *.dfm}

uses Login, Main, StaffMain, Customer, Order, Staff;

procedure TLogoutBox.LogBtnClick(Sender: TObject);
begin
  LoginS.UName.Text := '';
  LoginS.PWord.Text := '';
  LoginS.UName.SetFocus;
  Self.Hide;
  MainM.Hide;


end;

end.
