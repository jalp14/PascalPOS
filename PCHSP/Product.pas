unit Product;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls, Vcl.ComCtrls, Frame1, Frame2;

type
  TPManagement = class(TForm)
    FM11: TFM1;
    FM21: TFM2;
    ALBL2: TLabel;

    procedure FM21F2BT1Click(Sender: TObject);
    procedure FM11F1BTN1Click(Sender: TObject);
    procedure FM11F1DCM1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PManagement: TPManagement;

implementation

{$R *.dfm}


procedure TPManagement.FM11F1BTN1Click(Sender: TObject);
begin
  FM11.F1BTN1Click(Sender);

end;

procedure TPManagement.FM11F1DCM1Click(Sender: TObject);
begin
  FM11.F1DCM1Click(Sender);

end;

procedure TPManagement.FM21F2BT1Click(Sender: TObject);
begin
  FM21.F2BT1Click(Sender);

end;

end.
