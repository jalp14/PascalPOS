unit Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TSplashS = class(TForm)
    SImage: TImage;
    SLBL1: TLabel;
    AI1: TActivityIndicator;
    Tm1: TTimer;
    procedure Tm1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashS: TSplashS;

implementation

{$R *.dfm}

procedure TSplashS.Tm1Timer(Sender: TObject);
begin
  Tm1.Enabled := False;
  Close;
end;

end.
