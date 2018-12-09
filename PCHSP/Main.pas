unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UserFrame;

type
  TMainM = class(TForm)
    ALBL1: TLabel;
    ALBL2: TLabel;
    MBT1: TButton;
    MBT2: TButton;
    MBT3: TButton;
    MBT4: TButton;
    MBT5: TButton;
    MBT6: TButton;
    MBT7: TButton;
    procedure MBT4Click(Sender: TObject);
    procedure MBT3Click(Sender: TObject);
    procedure MBT5Click(Sender: TObject);
    procedure MBT1Click(Sender: TObject);
    procedure f1UserNameClick(Sender: TObject);
    procedure ALBL2Click(Sender: TObject);
    procedure MBT2Click(Sender: TObject);
    procedure MBT6Click(Sender: TObject);
    procedure MBT7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainM: TMainM;

implementation

{$R *.dfm}

uses Staff, Customer, Product, Order, LogoutDialog, Login, CheckS, QEarning,
  IGen, ProdName, QuarterE;

procedure TMainM.ALBL2Click(Sender: TObject);
begin
  LogoutBox.Show;

end;

procedure TMainM.f1UserNameClick(Sender: TObject);
begin
  LogoutBox.show;
end;

procedure TMainM.MBT1Click(Sender: TObject);
begin
  PlaceOrder.show;
end;

procedure TMainM.MBT2Click(Sender: TObject);
begin
  CStock.show;
end;

procedure TMainM.MBT3Click(Sender: TObject);
begin
  CustManagement.show;
  CustManagement.CLBL3.Caption := LoginS.UName.text;
end;

procedure TMainM.MBT4Click(Sender: TObject);
begin
  SManagement.show;
end;

procedure TMainM.MBT5Click(Sender: TObject);
begin
  ProductName.Show;
end;

procedure TMainM.MBT6Click(Sender: TObject);
begin
  InvGen.show;
end;

procedure TMainM.MBT7Click(Sender: TObject);
begin
  QEarnings.show;
end;

end.
