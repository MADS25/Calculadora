unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    btn0: TButton;
    btn7: TButton;
    btn8: TButton;
    btn_ponto: TButton;
    btn1: TButton;
    btn2: TButton;
    btn4: TButton;
    btn5: TButton;
    btn3: TButton;
    btn6: TButton;
    btn9: TButton;
    btn_igual: TButton;
    btn_soma: TButton;
    btn_subi: TButton;
    btn_mult: TButton;
    btn_div: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    lbl_operador: TLabel;
    lbl_n1: TLabel;
    lbl_n2: TLabel;
    btn_del: TButton;
    btn_limpa: TButton;
    btn_C: TButton;
    procedure btn_subiClick(Sender: TObject);
    procedure btn_somaClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_limpaClick(Sender: TObject);
    procedure btn_CClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}



procedure TForm1.btn2Click(Sender: TObject);
begin
  if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '2';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '2';
     end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '3';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '3';
     end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '4';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '4';
     end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '5';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '5';
     end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '6';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '6';
     end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
 if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '7';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '7';
     end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
 if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '8';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '8';
     end;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
 if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '9';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '9';
     end;
end;

procedure TForm1.btn_CClick(Sender: TObject);
begin
  if  lbl_operador.Text = '.' then
    begin
       lbl_n1.Text:='';
    end
    else
    begin
      lbl_n2.Text:='';
    end;    
end;

procedure TForm1.btn_delClick(Sender: TObject);
begin
  if lbl_operador.Text = '.' then
  begin
    lbl_n1.Text :=   Copy(lbl_n1.Text, 0, Length(lbl_n1.Text) - 1)
  end
  else
  begin
    lbl_n2.Text :=   Copy(lbl_n2.Text, 0, Length(lbl_n2.Text) - 1)
  end;    
end;

procedure TForm1.btn_divClick(Sender: TObject);
begin
  lbl_operador.Text := '/';
  btn_soma.Enabled :=True;
  btn_div.Enabled  :=False;
  btn_mult.Enabled :=True;
  btn_subi.Enabled :=True;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
var n1, n2: double;
var x: Char;

begin
    n1:= StrToFloat(lbl_n1.Text);
    n2:= StrToFloat(lbl_n2.Text);


   { //efetuando a soma
    if(lbl_operador.Text = '+')Then
    begin
       ShowMessage (FloatToStr( n1 + n2 ));
    end;
     //efetuando a subi
    if(lbl_operador.Text = '-')Then
    begin
       ShowMessage (FloatToStr( n1 - n2 ));
    end;
     //efetuando a mult
    if(lbl_operador.Text = '*')Then
    begin
       ShowMessage (FloatToStr( n1 * n2 ));
    end;
     //efetuando a div
    if(lbl_operador.Text = '/')Then
    begin
       ShowMessage (FloatToStr( n1 / n2 ));
    end;
    }
    x :=  lbl_operador.Text[1];
    case x of
      '+':begin
             ShowMessage (FloatToStr( n1 + n2 ));
          end;
      '-':begin
             ShowMessage (FloatToStr( n1 - n2 ));
          end;
      '*':begin
             ShowMessage (FloatToStr( n1 * n2 ));
          end;
      '/':begin
             ShowMessage (FloatToStr( n1 / n2 ));
          end;

    end;

    lbl_operador.Text  := '.';
    lbl_n1.Text := ' ';
    lbl_n2.Text := ' ';
    btn_soma.Enabled :=True;
    btn_div.Enabled  :=True;
    btn_mult.Enabled :=True;
    btn_subi.Enabled :=True;
    
end;

procedure TForm1.btn_limpaClick(Sender: TObject);
begin
    lbl_operador.Text  := '.';
    lbl_n1.Text := ' ';
    lbl_n2.Text := ' ';
    btn_soma.Enabled :=True;
    btn_div.Enabled  :=True;
    btn_mult.Enabled :=True;
    btn_subi.Enabled :=True;
end;

procedure TForm1.btn_multClick(Sender: TObject);
begin
  lbl_operador.Text := '*';

  btn_soma.Enabled :=True;
  btn_div.Enabled  :=True;
  btn_mult.Enabled :=False;
  btn_subi.Enabled :=True;
end;

procedure TForm1.btn_pontoClick(Sender: TObject);
begin
  if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + ',';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + ',';
     end;
end;

procedure TForm1.btn_somaClick(Sender: TObject);
begin
  lbl_operador.Text := '+';

  btn_soma.Enabled :=False;
  btn_div.Enabled  :=True;
  btn_mult.Enabled :=True;
  btn_subi.Enabled :=True;
end;

procedure TForm1.btn_subiClick(Sender: TObject);
begin
  lbl_operador.Text := '-';

  btn_soma.Enabled :=True;
  btn_div.Enabled  :=True;
  btn_mult.Enabled :=True;
  btn_subi.Enabled :=False;


end;


procedure TForm1.btn0Click(Sender: TObject);
begin
 if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '0';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '0';
     end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
   if lbl_operador.Text = '.' then
     begin
       lbl_n1.Text := lbl_n1.Text + '1';
     end
     else
     begin
          lbl_n2.Text := lbl_n2.Text + '1';
     end;    
end;
end.
