unit QuarterE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TQEarnings = class(TForm)
    QLBL1: TLabel;
    QLBL2: TLabel;
    QCB1: TComboBox;
    QBtn1: TButton;
    ADOQCN1: TADOConnection;
    ADOQQ1: TADOQuery;
    QLBL3: TLabel;
    QLBL4: TLabel;
    QCB2: TComboBox;
    QBtn2: TButton;
    ADOQQ2: TADOQuery;
    QLBL5: TLabel;
    procedure QBtn1Click(Sender: TObject);
    procedure QBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QEarnings: TQEarnings;

implementation

{$R *.dfm}

procedure TQEarnings.QBtn1Click(Sender: TObject);
var d, d1, d2, d3 : String;
begin
  if QCB1.Text = '2015' then
  Begin
  d := ('Q1/15');
  d1 := ('Q2/15');
  d2 := ('Q3/15');
  d3 := ('Q4/15');
  ADOQQ1.Close;
  ADOQQ1.SQL.Clear;
  ADOQQ1.SQL.Add('Select AVG(CostofGoods) from FiscalQuarterEarnings as Demo');
  ADOQQ1.SQL.Add('Where FiscalQuarter IN ( (:d) , (:d1), (:d2), (:d3) )');
  ADOQQ1.Parameters.ParamByName('d').Value :=  d;
  ADOQQ1.Parameters.ParamByName('d1').Value := d1;
  ADOQQ1.Parameters.ParamByName('d2').Value := d2;
  ADOQQ1.Parameters.ParamByName('d3').Value := d3;
  ADOQQ1.Open;
  QLBL3.Caption := ('Average Cost of Goods is £') + ADOQQ1.Fields[0].AsString;
  End
  Else
  if QCB1.Text = '2016' then
  Begin
  d := ('Q1/16');
  d1 := ('Q2/16');
  d2 := ('Q3/16');
  d3 := ('Q4/16');
  ADOQQ1.Close;
  ADOQQ1.SQL.Clear;
  ADOQQ1.SQL.Add('Select AVG(CostofGoods) from FiscalQuarterEarnings as Demo');
  ADOQQ1.SQL.Add('Where FiscalQuarter IN ( (:d) , (:d1), (:d2), (:d3) )');
  ADOQQ1.Parameters.ParamByName('d').Value :=  d;
  ADOQQ1.Parameters.ParamByName('d1').Value := d1;
  ADOQQ1.Parameters.ParamByName('d2').Value := d2;
  ADOQQ1.Parameters.ParamByName('d3').Value := d3;
  ADOQQ1.Open;
  QLBL3.Caption := ('Average Cost of Goods is £') + ADOQQ1.Fields[0].AsString;
  End
  Else
  if QCB1.Text = '2017' then
  Begin
  d := ('Q1/17');
  d1 := ('Q2/17');
  d2 := ('Q3/17');
  d3 := ('Q4/17');
  ADOQQ1.Close;
  ADOQQ1.SQL.Clear;
  ADOQQ1.SQL.Add('Select AVG(CostofGoods) from FiscalQuarterEarnings as Demo');
  ADOQQ1.SQL.Add('Where FiscalQuarter IN ( (:d) , (:d1), (:d2), (:d3) )');
  ADOQQ1.Parameters.ParamByName('d').Value :=  d;
  ADOQQ1.Parameters.ParamByName('d1').Value := d1;
  ADOQQ1.Parameters.ParamByName('d2').Value := d2;
  ADOQQ1.Parameters.ParamByName('d3').Value := d3;
  ADOQQ1.Open;
  QLBL3.Caption := ('Average Cost of Goods is £') + ADOQQ1.Fields[0].AsString;
  End;

end;

procedure TQEarnings.QBtn2Click(Sender: TObject);
var s, s1, s2, s3 : String;
begin
  if QCB2.Text = '2015' then
  Begin
    s := ('Q1/15');
    s1 := ('Q2/15');
    s2 := ('Q3/15');
    s3 := ('Q4/15');
    ADOQQ2.SQL.Clear;
    ADOQQ2.SQL.Add('Select AVG(Revenue) from FiscalQuarterEarnings as Revenue');
    ADOQQ2.SQL.Add('Where FiscalQuarter IN (  (:s) , (:s1) , (:s2) , (:s3) ) ');
    ADOQQ2.Parameters.ParamByName('s').Value := s;
    ADOQQ2.Parameters.ParamByName('s1').Value := s1;
    ADOQQ2.Parameters.ParamByName('s2').Value := s2;
    ADOQQ2.Parameters.ParamByName('s3').Value := s3;
    ADOQQ2.Open;
    QLBL5.Caption:= ('Average Revenue made is £') + ADOQQ2.Fields[0].AsString;
  End
  Else
  if QCB2.Text = '2016' then
  Begin
    s := ('Q1/16');
    s1 := ('Q2/16');
    s2 := ('Q3/16');
    s3 := ('Q4/16');
    ADOQQ2.SQL.Clear;
    ADOQQ2.SQL.Add('Select AVG(Revenue) from FiscalQuarterEarnings as Revenue');
    ADOQQ2.SQL.Add('Where FiscalQuarter IN (  (:s) , (:s1) , (:s2) , (:s3) ) ');
    ADOQQ2.Parameters.ParamByName('s').Value := s;
    ADOQQ2.Parameters.ParamByName('s1').Value := s1;
    ADOQQ2.Parameters.ParamByName('s2').Value := s2;
    ADOQQ2.Parameters.ParamByName('s3').Value := s3;
    ADOQQ2.Open;
    QLBL5.Caption:= ('Average Revenue made is £') + ADOQQ2.Fields[0].AsString;
  End
  Else
  if QCB2.Text = '2017' then
  Begin
    s := ('Q1/17');
    s1 := ('Q2/17');
    s2 := ('Q3/17');
    s3 := ('Q4/17');
    ADOQQ2.SQL.Clear;
    ADOQQ2.SQL.Add('Select AVG(Revenue) from FiscalQuarterEarnings as Revenue');
    ADOQQ2.SQL.Add('Where FiscalQuarter IN (  (:s) , (:s1) , (:s2) , (:s3) ) ');
    ADOQQ2.Parameters.ParamByName('s').Value := s;
    ADOQQ2.Parameters.ParamByName('s1').Value := s1;
    ADOQQ2.Parameters.ParamByName('s2').Value := s2;
    ADOQQ2.Parameters.ParamByName('s3').Value := s3;
    ADOQQ2.Open;
    QLBL5.Caption:= ('Average Revenue made is £') + ADOQQ2.Fields[0].AsString;
  End;
end;

end.
