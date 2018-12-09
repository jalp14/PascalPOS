program Prog;

uses
  Vcl.Forms,
  Login in 'Login.pas' {LoginS},
  Main in 'Main.pas' {MainM},
  Staff in 'Staff.pas' {SManagement},
  Customer in 'Customer.pas' {CustManagement},
  Vcl.Themes,
  Vcl.Styles,
  Order in 'Order.pas' {PlaceOrder},
  FPword in 'FPword.pas' {RPword},
  LogoutDialog in 'LogoutDialog.pas' {LogoutBox},
  CheckS in 'CheckS.pas' {CStock},
  IGen in 'IGen.pas' {InvGen},
  ProdName in 'ProdName.pas' {ProductName},
  QuarterE in 'QuarterE.pas' {QEarnings};

{$R *.res}

  begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.CreateForm(TLoginS, LoginS);
  Application.CreateForm(TMainM, MainM);
  Application.CreateForm(TSManagement, SManagement);
  Application.CreateForm(TCustManagement, CustManagement);
  Application.CreateForm(TPlaceOrder, PlaceOrder);
  Application.CreateForm(TRPword, RPword);
  Application.CreateForm(TLogoutBox, LogoutBox);
  Application.CreateForm(TCStock, CStock);
  Application.CreateForm(TInvGen, InvGen);
  Application.CreateForm(TProductName, ProductName);
  Application.CreateForm(TQEarnings, QEarnings);
  Application.Run;
end.
