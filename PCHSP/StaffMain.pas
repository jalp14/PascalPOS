unit StaffMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainStaff = class(TForm)
    MBT5: TButton;
    MBT6: TButton;
    MBT3: TButton;
    MBT2: TButton;
    MBT1: TButton;
    SLBL1: TLabel;
    SLBL2: TLabel;
    procedure MBT1Click(Sender: TObject);
    procedure MBT3Click(Sender: TObject);
    procedure MBT5Click(Sender: TObject);
    procedure MBT6Click(Sender: TObject);
    procedure SLBL2Click(Sender: TObject);
    procedure MBT2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainStaff: TMainStaff;

implementation

{$R *.dfm}

uses Order, Customer, Product, Invoice, LogoutDialog, CheckS;

procedure TMainStaff.MBT1Click(Sender: TObject);
begin
PlaceOrder.show;
self.Hide;
end;

procedure TMainStaff.MBT2Click(Sender: TObject);
begin
  CStock.show;
end;

procedure TMainStaff.MBT3Click(Sender: TObject);
begin
CustManagement.show;
self.Hide;
end;

procedure TMainStaff.MBT5Click(Sender: TObject);
begin
PManagement.show;
self.Hide;
end;

procedure TMainStaff.MBT6Click(Sender: TObject);
begin
InvRecp.show;
self.Hide;
end;

procedure TMainStaff.SLBL2Click(Sender: TObject);
begin
  LogoutBox.show;

end;

end.
