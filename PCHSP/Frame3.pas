unit Frame3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFM3 = class(TFrame)
    FLBL1: TLabel;
    FLBL2: TLabel;
    FED1: TEdit;
    FLBL3: TLabel;
    FED2: TEdit;
    FBTN1: TButton;
    FBTN2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
