unit ConOrd;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TConfirmOrder = class(TForm)
    ConfirmBtn: TButton;
    CancelBtn: TButton;
    COLBL3: TLabel;
    COLBL1: TLabel;
    COLBL2: TLabel;
    procedure ConfirmBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfirmOrder: TConfirmOrder;

implementation

{$R *.dfm}

uses Order;

procedure TConfirmOrder.ConfirmBtnClick(Sender: TObject);
begin
  ConfirmBtn.ModalResult := idOK;
end;

end.
