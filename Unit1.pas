unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnGold: TButton;
    btnSilver: TButton;
    btnStandard: TButton;
    ScrollBar1: TScrollBar;
    Label2: TLabel;
    Button1: TButton;
    procedure ScrollBar1Change(Sender: TObject);
    procedure btnGoldClick(Sender: TObject);
    procedure btnSilverClick(Sender: TObject);
    procedure btnStandardClick(Sender: TObject);
  private
    procedure CalculateInterest(bonus: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSilverClick(Sender: TObject);
begin
  CalculateInterest(1);
end;

procedure TForm1.btnStandardClick(Sender: TObject);
begin
  CalculateInterest(0);
end;

procedure TForm1.CalculateInterest(bonus:integer);
var
  CurrentBalance:integer;
  StandardRate, InterestRate:double;
  msg:string;
begin
  StandardRate := 5;
  StandardRate := (StandardRate + bonus)/100;
  CurrentBalance := ScrollBar1.Position;
  InterestRate := CurrentBalance*StandardRate;

    if InterestRate > 0 then
      msg := 'Interest will be added (Credited) to ur account : '
    else
      msg := 'Interest will be removed(Debited) from ur account : ';

    Label1.Caption := msg + AnsiToUtf8(FloatToStrF(InterestRate,ffCurrency,2,2));



end;

procedure TForm1.btnGoldClick(Sender: TObject);
begin
  CalculateInterest(2);
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Label2.Caption := IntToStr(ScrollBar1.Position);
end;

end.
