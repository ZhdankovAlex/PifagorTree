unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Plus: TBitBtn;
    Minus: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Play: TBitBtn;
    Save: TButton;
    Right: TBitBtn;
    Left: TBitBtn;
    Label3: TLabel;
    Up: TBitBtn;
    Down: TBitBtn;
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure PlayClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure PlusClick(Sender: TObject);
    procedure RightClick(Sender: TObject);
    procedure LeftClick(Sender: TObject);
    procedure UpClick(Sender: TObject);
    procedure DownClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: Integer;
  n: Integer;
  count_minus, count_plus, count_left, count_right, count_up, count_down: Integer;
  power: Bool;
  Xa, Ya, Xb, Yb: Integer;
implementation

{$R *.dfm}

procedure Draw(const Image1:TImage; xA, yA, xB, yB:Integer; l:Real);
var tg_a: Real;
    xC, yC, xD, yD, xE, yE:Integer;
begin
  while l<n do
  
  begin

  tg_a := (Sin(a*Pi/180)/Cos(a*Pi/180));

  Image1.Canvas.MoveTo(xA, yA);  //A

  xC := xA+yA-yB;
  yC := yA+xB-xA;

  Image1.Canvas.LineTo(xC, yC);    //A-C

  xD := xB+yA-yB;
  yD := yB+xB-xA;

  Image1.Canvas.LineTo(xD, yD);    //C-D

  xE := Round((xC+xD*(tg_a*tg_a)+(yC-yD)*tg_a)/(1+(tg_a*tg_a)));
  yE := Round((yC+yD*(tg_a*tg_a)+(xD-xC)*tg_a)/(1+(tg_a*tg_a)));

  Image1.Canvas.LineTo(xE, yE); //D-E

  Image1.Canvas.LineTo(xC, yC); //E-C

  Image1.Canvas.LineTo(xD, yD); //C-D

  Image1.Canvas.LineTo(xB, yB); //D-B

  Image1.Canvas.LineTo(xA, yA); //B-A

  Image1.Canvas.Brush.Color := RGB(Random(255), Random(255), 255);

  Image1.Canvas.FloodFill(Round((xC+xB)/2), Round((yA+yD)/2), clBlue, fsBorder);

  l := l+1;

  Draw(Image1, xC, yC, xE, yE, l);
  Draw(Image1, xE, yE, xD, yD, l);
  end;
end;

procedure TForm1.PlusClick(Sender: TObject);
begin
  if power and (count_plus < 10) then
  begin
      count_plus := count_plus + 5;
      Image1.Canvas.Pen.Color := clBlack;
      Image1.Canvas.Brush.Color := clBlack;
      Image1.Canvas.Rectangle(0,0,615,400);
      Image1.Canvas.Pen.Color := clBlue;
      Image1.Canvas.Pen.Width := 1;
      Xa := Xa - ABS(count_minus - count_plus);
      Ya := Ya - 4*ABS(count_minus - count_plus);
      Xb := Xb + ABS(count_minus - count_plus);
      Yb := Yb - 4*ABS(count_minus - count_plus);
      count_minus := count_minus - 5;
      Draw(Image1, Xa, Ya, Xb, Yb, 0);
  end
  else if not power then ShowMessage('Ñםאקאכא םאזלטעו "ÇÀÏÓÑÊ" ');
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
  if power and (count_minus < 10) then
  begin
      count_minus := count_minus + 5;
      Image1.Canvas.Pen.Color := clBlack;
      Image1.Canvas.Brush.Color := clBlack;
      Image1.Canvas.Rectangle(0,0,615,400);
      Image1.Canvas.Pen.Color := clBlue;
      Image1.Canvas.Pen.Width := 1;
      Xa := Xa + ABS(count_minus - count_plus);
      Ya := Ya + 4*ABS(count_minus - count_plus);
      Xb := Xb - ABS(count_minus - count_plus);
      Yb := Yb + 4*ABS(count_minus - count_plus);
      count_plus := count_plus - 5;
      Draw(Image1, Xa, Ya, Xb, Yb, 0);
  end
  else if not power then ShowMessage('Ñםאקאכא םאזלטעו "ÇÀÏÓÑÊ" ');
end;

procedure TForm1.PlayClick(Sender: TObject);
var x: Integer;
begin
  power := true;
  Play.Font.Color := clRed;
  if (((not TryStrToInt(Edit1.Text,x) or not TryStrToInt(Edit2.Text,x)))or(StrToInt(Edit2.Text) >= 90))  then
    ShowMessage('Äאםםûו םוךמננוךעםû')
  else
  begin
    a := StrToInt(Edit2.Text);
    n := StrToInt(Edit1.Text);
    Image1.Canvas.Pen.Color := clBlack;
    Image1.Canvas.Brush.Color := clBlack;
    Image1.Canvas.Rectangle(0,0,615,400);
    Image1.Canvas.Pen.Color := clBlue;
    Image1.Canvas.Pen.Width := 1;
    count_plus := 0;
    count_minus := 0;
    count_right := 0;
    count_left := 0;
    count_up := 0;
    count_down := 0;

    Xa := 260;
    Ya := 50;
    Xb := 340;
    Yb := 50;

    Draw(Image1, Xa, Ya, Xb, Yb, 0);
  end;
end;

procedure TForm1.RightClick(Sender: TObject);
begin
  if power and (count_right < 20) then
  begin
      count_right := count_right + 5;
      Image1.Canvas.Pen.Color := clBlack;
      Image1.Canvas.Brush.Color := clBlack;
      Image1.Canvas.Rectangle(0,0,615,400);
      Image1.Canvas.Pen.Color := clBlue;
      Image1.Canvas.Pen.Width := 1;
      Xa := Xa + ABS(count_right - count_left);
      Xb := Xb + ABS(count_right - count_left);
      count_left := count_left - 5;
      Draw(Image1, Xa, Ya, Xb, Yb, 0);
  end
  else if not power then ShowMessage('Ñםאקאכא םאזלטעו "ÇÀÏÓÑÊ" ');
end;

procedure TForm1.LeftClick(Sender: TObject);
begin
    if power and (count_left < 20) then
  begin
      count_left := count_left + 5;
      Image1.Canvas.Pen.Color := clBlack;
      Image1.Canvas.Brush.Color := clBlack;
      Image1.Canvas.Rectangle(0,0,615,400);
      Image1.Canvas.Pen.Color := clBlue;
      Image1.Canvas.Pen.Width := 1;
      Xa := Xa - ABS(count_right - count_left);
      Xb := Xb - ABS(count_right - count_left);
      count_right := count_right - 5;
      Draw(Image1, Xa, Ya, Xb, Yb, 0);
  end
  else if not power then ShowMessage('Ñםאקאכא םאזלטעו "ÇÀÏÓÑÊ" ');
end;

procedure TForm1.UpClick(Sender: TObject);
begin
    if power and (count_up < 20) then
  begin
      count_up := count_up + 5;
      Image1.Canvas.Pen.Color := clBlack;
      Image1.Canvas.Brush.Color := clBlack;
      Image1.Canvas.Rectangle(0,0,615,400);
      Image1.Canvas.Pen.Color := clBlue;
      Image1.Canvas.Pen.Width := 1;
      Ya := Ya - ABS(count_up - count_down);
      Yb := Yb - ABS(count_up - count_down);
      count_down := count_down - 5;
      Draw(Image1, Xa, Ya, Xb, Yb, 0);
  end
  else if not power then ShowMessage('Ñםאקאכא םאזלטעו "ÇÀÏÓÑÊ" ');
end;

procedure TForm1.DownClick(Sender: TObject);
begin
   if power and (count_down < 20) then
  begin
      count_down := count_down + 5;
      Image1.Canvas.Pen.Color := clBlack;
      Image1.Canvas.Brush.Color := clBlack;
      Image1.Canvas.Rectangle(0,0,615,400);
      Image1.Canvas.Pen.Color := clBlue;
      Image1.Canvas.Pen.Width := 1;
      Ya := Ya + ABS(count_up - count_down);
      Yb := Yb + ABS(count_up - count_down);
      count_up := count_up - 5;
      Draw(Image1, Xa, Ya, Xb, Yb, 0);
  end
  else if not power then ShowMessage('Ñםאקאכא םאזלטעו "ÇÀÏÓÑÊ" ');
end;

procedure TForm1.SaveClick(Sender: TObject);
begin
  if power then
  Image1.Picture.SaveTofile('C:\Users\Alexey\Pictures\Fraktals\pifagor_tree.jpg')
  else
  ShowMessage('Ñםאקאכא םאזלטעו "ÇÀÏÓÑÊ" ');
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Play.Font.Color := clBlack;
end;

procedure TForm1.Edit2Click(Sender: TObject);
begin
  Edit2.Text := '';
  Play.Font.Color := clBlack;
end;

end.
