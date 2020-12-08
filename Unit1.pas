unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math, DateUtils,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btnGerar: TButton;
    edtCPF: TEdit;
    edtCNS: TEdit;
    edtDataNasc: TEdit;
    edtIdade: TEdit;
    edtNomeCompleto: TEdit;
    edtNomeMae: TEdit;
    edtNomePai: TEdit;
    edtNaturalidade: TEdit;
    edtRG: TEdit;
    edtUF: TEdit;
    edtTelefone: TEdit;
    edtDDD: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    rdgpSexo: TRadioGroup;
    edtTituloEleitor: TEdit;
    Label12: TLabel;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dataNasc : TDate;
  j, f, uf : Integer;
  //J e F variavel do contador do sobrenome para identificar pai e mae//
  //UF variavel do contador do estado para identificar estado e ddd//


implementation

{$R *.dfm}

function geradorCPF(const Ponto: Boolean): string;
  var
    n1, n2, n3, n4, n5, n6, n7, n8, n9, d1, d2: LongInt;
  begin

    n1 := Trunc(Random(10));
    n2 := Trunc(Random(10));
    n3 := Trunc(Random(10));
    n4 := Trunc(Random(10));
    n5 := Trunc(Random(10));
    n6 := Trunc(Random(10));
    n7 := Trunc(Random(10));
    n8 := Trunc(Random(10));
    n9 := Trunc(Random(10));

    d1 := (n9 * 2) + (n8 * 3) + (n7 * 4) + (n6 *  5) + (n5 * 6) + (n4 * 7) + (n3 * 8) + (n2 * 9) + (n1 * 10);
    d1 := 11 - (d1 mod 11);

    if (d1 >= 10) then
      begin
        d1 := 0;
      end;

    d2 := (d1 * 2) + (n9 * 3) + (n8 * 4) + (n7 *  5) + (n6 *  6) + (n5 * 7) + (n4 * 8) + (n3 * 9) + (n2 * 10) + (n1 * 11);
    d2 := 11 - (d2 mod 11);

    if (d2>=10) then
      begin
        d2 := 0;
      end;

    Result := IntToStr(n1) + IntToStr(n2) + IntToStr(n3) + IntToStr(n4) + IntToStr(n5) + IntToStr(n6) +
              IntToStr(n7) + IntToStr(n8) + IntToStr(n9) + IntToStr(d1) + IntToStr(d2);

    if Ponto then
      begin
        Result := Copy(Result, 1, 3) + '.' + Copy(Result, 4, 3) + '.' + Copy(Result, 7, 3) + '-' + Copy(Result, 10, 2);
      end;

  end;

function geradorCNS(): string;
  var
    n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15 : LongInt;
    d1, d2, d3, d4, I: Integer;

  begin
  I :=0;
  while I=0 do
   begin

    n1  := Trunc(Random(3));
    n2  := Trunc(Random(10));
    n3  := Trunc(Random(10));
    n4  := Trunc(Random(10));
    n5  := Trunc(Random(10));
    n6  := Trunc(Random(10));
    n7  := Trunc(Random(10));
    n8  := Trunc(Random(10));
    n9  := Trunc(Random(10));
    n10 := Trunc(Random(10));
    n11 := Trunc(Random(10));
    n12 := Trunc(Random(10));
    n13 := Trunc(Random(10));
    n14 := Trunc(Random(10));
    n15 := Trunc(Random(10));

   n1 := n1+6;
   if n1<=6 then
    begin
      n1 := n1+1;
    end;

   d1 := (n1*15) + (n2*14) + (n3*13) + (n4*12) + (n5*11) + (n6*10) + (n7*9) + (n8*8);
   d2 := (n9*7) + (n10*6) + (n11*5) + (n12*4) + (n13*3) + (n14*2) + (n15*1);
   d3 := (d1+d2);
   d4 := (d3 mod 11);
   if d4=0 then
    begin
      I := 1;
      Result := IntToStr(n1) + IntToStr(n2) + IntToStr(n3)+' ' + IntToStr(n4) + IntToStr(n5) +
      IntToStr(n6) + IntToStr(n7) +' '+ IntToStr(n8) + IntToStr(n9) + IntToStr(n10)+
      IntToStr(n11)+' '+ IntToStr(n12)+ IntToStr(n13)+ IntToStr(n14)+ IntToStr(n15);
    end;
   end
  end;

function gerarDataNasc(): string;
  var
    dia, mes, ano : Integer;
    //dataNasc : TDate;

  begin
    mes  := Trunc(RandomRange(1,12));
    if (mes = 1) or (mes = 3) or (mes=5) or (mes=7) or (mes=8) or (mes=10) or (mes=12) then
      begin
        dia  := Trunc(RandomRange(1,31));
        ano  := Trunc(RandomRange(1950, 2020));
        dataNasc := StrToDateTime(IntToStr(dia)+'/'+IntToStr(mes)+'/'+IntToStr(ano));
        Result := DateToStr(dataNasc);
      end;
   if (mes = 4) or (mes = 6) or (mes=9) or (mes=11) then
      begin
       dia  := Trunc(RandomRange(1,30));
       ano  := Trunc(RandomRange(1950, 2020));
       dataNasc := StrToDateTime(IntToStr(dia)+'/'+IntToStr(mes)+'/'+IntToStr(ano));
       Result := DateToStr(dataNasc);
      end;
   if (mes = 2) then
      begin
       dia  := Trunc(RandomRange(1,30));
       ano  := Trunc(RandomRange(1950, 2020));
       dataNasc := StrToDateTime(IntToStr(dia)+'/'+IntToStr(mes)+'/'+IntToStr(ano));
       Result := DateToStr(dataNasc);
      end;
 end;

 function gerarIdade(): string;
  var //dataNasc : String;
      idade : Integer;
      datanasci : TDate;
  begin
    datanasci := dataNasc;
    idade := YearsBetween(Date, datanasci);
    Result := IntToStr(idade);
  end;

function gerarNomeMasculino(): string;
  var nome : array [0..11] of string;
  var sobrenome : array [0..14] of string;
  i : Integer;

  begin
    nome[0] := 'Matheus';
    nome[1] := 'Marcelo';
    nome[2] := 'Mario';
    nome[3] := 'José';
    nome[4] := 'João';
    nome[5] := 'Antônio';
    nome[6] := 'Miguel';
    nome[7] := 'Francisco';
    nome[8] := 'Calos';
    nome[9] := 'Paulo';
    nome[10] := 'Pedro';
    nome[11] := 'Luiz';

    sobrenome[0] := 'Almeida';
    sobrenome[1] := 'Silva';
    sobrenome[2] := 'Alves';
    sobrenome[3] := 'Ferreira';
    sobrenome[4] := 'Barbosa';
    sobrenome[5] := 'Borges Dias';
    sobrenome[6] := 'Campos';
    sobrenome[7] := 'Cardoso';
    sobrenome[8] := 'Marques';
    sobrenome[9] := 'Nunes';
    sobrenome[10] := 'Ramos';
    sobrenome[11] := 'Ribeiro';
    sobrenome[12] := 'Santos';
    sobrenome[13] := 'Soares';
    sobrenome[14] := 'Lima';

    i := randomrange(0,11);
    j := randomrange(0,14);
    f := randomrange(0,14);
    Result := nome[i]+' '+sobrenome[f]+' '+sobrenome[j];
  end;

  function gerarNomeFeminino(): string;
  var nome : array [0..11] of string;
  var sobrenome : array [0..14] of string;
  i : Integer;

  begin
    nome[0] := 'Jéssica';
    nome[1] := 'Marcela';
    nome[2] := 'Mariana';
    nome[3] := 'Amanda';
    nome[4] := 'Gabriela';
    nome[5] := 'Renata';
    nome[6] := 'Tamires';
    nome[7] := 'Isabela';
    nome[8] := 'Juliana';
    nome[9] := 'Fernanda';
    nome[10] := 'Roberta';
    nome[11] := 'Michele';

    sobrenome[0] := 'Almeida';
    sobrenome[1] := 'Silva';
    sobrenome[2] := 'Alves';
    sobrenome[3] := 'Ferreira';
    sobrenome[4] := 'Barbosa';
    sobrenome[5] := 'Borges Dias';
    sobrenome[6] := 'Campos';
    sobrenome[7] := 'Cardoso';
    sobrenome[8] := 'Marques';
    sobrenome[9] := 'Nunes';
    sobrenome[10] := 'Ramos';
    sobrenome[11] := 'Ribeiro';
    sobrenome[12] := 'Santos';
    sobrenome[13] := 'Soares';
    sobrenome[14] := 'Lima';

    i := randomrange(0,11);
    j := randomrange(0,14);
    f := randomrange(0,14);
    Result := nome[i]+' '+sobrenome[f]+' '+sobrenome[j];
  end;

  function gerarNomeAleatorio(): string;
  var nome : array [0..11] of string;
  var sobrenome : array [0..14] of string;
  i : Integer;

  begin
    nome[0] := 'Marcos';
    nome[1] := 'Cristiane';
    nome[2] := 'Estefan';
    nome[3] := 'Luzia';
    nome[4] := 'Tatiane';
    nome[5] := 'Ricardo';
    nome[6] := 'Glaucia';
    nome[7] := 'Elizabeth';
    nome[8] := 'Bruno';
    nome[9] := 'Davi';
    nome[10] := 'Elias';
    nome[11] := 'Mariano';

    sobrenome[0] := 'Almeida';
    sobrenome[1] := 'Silva';
    sobrenome[2] := 'Alves';
    sobrenome[3] := 'Ferreira';
    sobrenome[4] := 'Barbosa';
    sobrenome[5] := 'Borges Dias';
    sobrenome[6] := 'Campos';
    sobrenome[7] := 'Cardoso';
    sobrenome[8] := 'Marques';
    sobrenome[9] := 'Nunes';
    sobrenome[10] := 'Ramos';
    sobrenome[11] := 'Ribeiro';
    sobrenome[12] := 'Santos';
    sobrenome[13] := 'Soares';
    sobrenome[14] := 'Lima';

    i := randomrange(0,11);
    j := randomrange(0,14);
    f := randomrange(0,14);
    Result := nome[i]+' '+sobrenome[f]+' '+sobrenome[j];
  end;

function gerarNomeMae(): string;
  var nome : array [0..11] of string;
  var sobrenome : array [0..14] of string;
  i : Integer;

  begin
    nome[0] := 'Maria';
    nome[1] := 'Ana';
    nome[2] := 'Lourdes';
    nome[3] := 'Antônia';
    nome[4] := 'Marcia';
    nome[5] := 'Aline';
    nome[6] := 'Creuza';
    nome[7] := 'Adriana';
    nome[8] := 'Sandra';
    nome[9] := 'Sonia';
    nome[10] := 'Fatima';
    nome[11] := 'Lucia';

    sobrenome[0] := 'Almeida';
    sobrenome[1] := 'Silva';
    sobrenome[2] := 'Alves';
    sobrenome[3] := 'Ferreira';
    sobrenome[4] := 'Barbosa';
    sobrenome[5] := 'Borges';
    sobrenome[6] := 'Campos';
    sobrenome[7] := 'Cardoso';
    sobrenome[8] := 'Marques';
    sobrenome[9] := 'Nunes';
    sobrenome[10] := 'Ramos';
    sobrenome[11] := 'Ribeiro';
    sobrenome[12] := 'Santos';
    sobrenome[13] := 'Soares';
    sobrenome[14] := 'Lima';

    i := randomrange(0,11);

    Result := nome[i]+' '+sobrenome[f]+' '+sobrenome[j];
  end;

function gerarNomePai(): string;
  var nome : array [0..11] of string;
  var sobrenome : array [0..14] of string;
  i, f: Integer;

  begin
    nome[0] := 'Geraldo';
    nome[1] := 'Marcelo';
    nome[2] := 'Mario';
    nome[3] := 'José';
    nome[4] := 'João';
    nome[5] := 'Antônio';
    nome[6] := 'Miguel';
    nome[7] := 'Francisco';
    nome[8] := 'Carlos';
    nome[9] := 'Paulo';
    nome[10] := 'Amadeu';
    nome[11] := 'Agnaldo';

    sobrenome[0] := 'Almeida';
    sobrenome[1] := 'Silva';
    sobrenome[2] := 'Alves';
    sobrenome[3] := 'Ferreira';
    sobrenome[4] := 'Barbosa';
    sobrenome[5] := 'Borges';
    sobrenome[6] := 'Campos';
    sobrenome[7] := 'Cardoso';
    sobrenome[8] := 'Marques';
    sobrenome[9] := 'Nunes';
    sobrenome[10] := 'Ramos';
    sobrenome[11] := 'Ribeiro';
    sobrenome[12] := 'Santos';
    sobrenome[13] := 'Soares';
    sobrenome[14] := 'Lima';

    i := randomrange(0,11);
    Result := nome[i]+' '+sobrenome[j];
  end;

function gerarTelefone(): string;
  var
    n1, n2, n3, n4, n5, n6, n7, n8 : LongInt;
    I: String;

  begin
    n1  := Trunc(Random(9));
    n2  := Trunc(Random(9));
    n3  := Trunc(Random(9));
    n4  := Trunc(Random(9));
    n5  := Trunc(Random(9));
    n6  := Trunc(Random(9));
    n7  := Trunc(Random(9));
    n8  := Trunc(Random(9));

   i := IntToStr(n1)+IntToStr(n2)+IntToStr(n3)+IntToStr(n4)+IntToStr(n5)+IntToStr(n6)+IntToStr(n7)+IntToStr(n8);
   Result := ('9'+(i));
  end;

function gerarUF(): string;
  var estado : array [0..25] of string;

  begin
    estado[0] := 'AC';
    estado[1] := 'AL';
    estado[2] := 'AP';
    estado[3] := 'AM';
    estado[4] := 'BA';
    estado[5] := 'CE';
    estado[6] := 'DF';
    estado[7] := 'ES';
    estado[8] := 'GO';
    estado[9] := 'MA';
    estado[10] := 'MG';
    estado[11] := 'MS';
    estado[12] := 'PA';
    estado[13] := 'PB';
    estado[14] := 'PE';
    estado[15] := 'PI';
    estado[16] := 'PR';
    estado[17] := 'RJ';
    estado[18] := 'RN';
    estado[19] := 'RO';
    estado[20] := 'RR';
    estado[21] := 'RS';
    estado[22] := 'SC';
    estado[23] := 'SE';
    estado[24] := 'SP';
    estado[25] := 'TO';

    uf := randomrange(0,24);
    Result := estado[uf];
  end;

function gerarDDD(): string;
  var ddd : array [0..25] of string;
  begin
    ddd[0] := '68';
    ddd[1] := '82';
    ddd[2] := '96';
    ddd[3] := '92';
    ddd[4] := '71';
    ddd[5] := '88';
    ddd[6] := '61';
    ddd[7] := '27';
    ddd[8] := '62';
    ddd[9] := '98';
    ddd[10] := '31';
    ddd[11] := '84';
    ddd[12] := '91';
    ddd[13] := '83';
    ddd[14] := '81';
    ddd[15] := '86';
    ddd[16] := '41';
    ddd[17] := '21';
    ddd[18] := '84';
    ddd[19] := '69';
    ddd[20] := '95';
    ddd[21] := '51';
    ddd[22] := '48';
    ddd[23] := '79';
    ddd[24] := '11';
    ddd[25] := '63';

    Result := ddd[uf];
  end;


procedure TForm1.btnGerarClick(Sender: TObject);
  begin
    if geradorCPF (True) <> '' then
      begin
        if rdgpSexo.ItemIndex=0 then
          begin
            edtCPF.Text       := geradorCPF(True);
            edtCNS.Text       := geradorCNS();
            edtDataNasc.Text  := gerarDataNasc();
            edtIdade.Text     := gerarIdade();
            edtNomeCompleto.Text := gerarNomeMasculino();
            edtNomeMae.Text   := gerarNomeMae();
            edtNomePai.Text   := gerarNomePai();
            edtTelefone.Text  := gerarTelefone();
            edtUF.Text        := gerarUF();
            edtDDD.Text       := gerarDDD();
          end;
        if rdgpSexo.ItemIndex=1 then
          begin
              edtCPF.Text       := geradorCPF(True);
              edtCNS.Text       := geradorCNS();
              edtDataNasc.Text  := gerarDataNasc();
              edtIdade.Text     := gerarIdade();
              edtNomeCompleto.Text := gerarNomeFeminino();
              edtNomeMae.Text   := gerarNomeMae();
              edtNomePai.Text   := gerarNomePai();
              edtTelefone.Text  := gerarTelefone();
              edtUF.Text        := gerarUF();
              edtDDD.Text       := gerarDDD();
          end;
        if rdgpSexo.ItemIndex=2 then
          begin
              edtCPF.Text       := geradorCPF(True);
              edtCNS.Text       := geradorCNS();
              edtDataNasc.Text  := gerarDataNasc();
              edtIdade.Text     := gerarIdade();
              edtNomeCompleto.Text := gerarNomeAleatorio();
              edtNomeMae.Text   := gerarNomeMae();
              edtNomePai.Text   := gerarNomePai();
              edtTelefone.Text  := gerarTelefone();
              edtUF.Text        := gerarUF();
              edtDDD.Text       := gerarDDD();
          end
      end;
  end;

end.
