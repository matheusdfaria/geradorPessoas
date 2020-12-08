object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gerador de Pessoas'
  ClientHeight = 521
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 69
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 33
    Top = 112
    Width = 20
    Height = 13
    Caption = 'M'#227'e'
  end
  object Label3: TLabel
    Left = 224
    Top = 112
    Width = 14
    Height = 13
    Caption = 'Pai'
  end
  object Label4: TLabel
    Left = 33
    Top = 158
    Width = 55
    Height = 13
    Caption = 'Nascimento'
  end
  object Label5: TLabel
    Left = 128
    Top = 158
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label6: TLabel
    Left = 225
    Top = 158
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Label7: TLabel
    Left = 33
    Top = 201
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label8: TLabel
    Left = 225
    Top = 201
    Width = 21
    Height = 13
    Caption = 'DDD'
  end
  object Label9: TLabel
    Left = 264
    Top = 201
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label10: TLabel
    Left = 128
    Top = 201
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object Label11: TLabel
    Left = 33
    Top = 244
    Width = 20
    Height = 13
    Caption = 'CNS'
  end
  object Label12: TLabel
    Left = 225
    Top = 244
    Width = 74
    Height = 13
    Caption = 'Titulo de Eleitor'
  end
  object btnGerar: TButton
    Left = 192
    Top = 440
    Width = 89
    Height = 49
    Caption = 'Gerar'
    TabOrder = 0
    OnClick = btnGerarClick
  end
  object edtCPF: TEdit
    Left = 33
    Top = 217
    Width = 89
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = 'CPF'
  end
  object edtCNS: TEdit
    Left = 33
    Top = 263
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = 'Cart'#227'o Nacional Sa'#250'de'
  end
  object edtDataNasc: TEdit
    Left = 33
    Top = 174
    Width = 89
    Height = 21
    TabOrder = 3
    Text = 'Data Nascimento'
  end
  object edtIdade: TEdit
    Left = 128
    Top = 174
    Width = 34
    Height = 21
    TabOrder = 4
    Text = 'Idade'
  end
  object edtNomeCompleto: TEdit
    Left = 33
    Top = 88
    Width = 383
    Height = 21
    TabOrder = 5
    Text = 'Nome Completo'
  end
  object edtNomeMae: TEdit
    Left = 33
    Top = 131
    Width = 185
    Height = 21
    TabOrder = 6
    Text = 'M'#227'e'
  end
  object edtNomePai: TEdit
    Left = 224
    Top = 131
    Width = 192
    Height = 21
    TabOrder = 7
    Text = 'Pai'
  end
  object edtNaturalidade: TEdit
    Left = 264
    Top = 174
    Width = 152
    Height = 21
    TabOrder = 8
    Text = 'Naturalidade'
  end
  object edtRG: TEdit
    Left = 128
    Top = 217
    Width = 90
    Height = 21
    TabOrder = 9
    Text = 'RG'
  end
  object edtUF: TEdit
    Left = 224
    Top = 174
    Width = 34
    Height = 21
    TabOrder = 10
    Text = 'UF'
  end
  object edtTelefone: TEdit
    Left = 264
    Top = 217
    Width = 82
    Height = 21
    TabOrder = 11
    Text = 'Telefone'
  end
  object edtDDD: TEdit
    Left = 224
    Top = 217
    Width = 34
    Height = 21
    TabOrder = 12
    Text = 'DDD'
  end
  object rdgpSexo: TRadioGroup
    Left = 33
    Top = 32
    Width = 383
    Height = 31
    Caption = 'Sexo'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Aleat'#243'rio')
    TabOrder = 13
  end
  object edtTituloEleitor: TEdit
    Left = 224
    Top = 263
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 14
    Text = 'Titulo de Eleitor'
  end
end
