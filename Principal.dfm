object fPrincipal: TfPrincipal
  Left = 233
  Top = 134
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 1 - Convers'#227'o de Texto'
  ClientHeight = 209
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTextoOriginal: TLabel
    Left = 12
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Texto original:'
  end
  object lbTextoConvertido: TLabel
    Left = 448
    Top = 8
    Width = 86
    Height = 13
    Caption = 'Texto convertido:'
  end
  object memoOriginal: TMemo
    Left = 11
    Top = 24
    Width = 281
    Height = 177
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object rgOpcoesConversao: TRadioGroup
    Left = 299
    Top = 19
    Width = 142
    Height = 148
    Caption = 'Op'#231#245'es de convers'#227'o:'
    Items.Strings = (
      'Invertido'
      'Primeira mai'#250'scula'
      'Ordem alfab'#233'tica')
    TabOrder = 1
  end
  object btnConverter: TButton
    Left = 300
    Top = 173
    Width = 141
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
    OnClick = btnConverterClick
  end
  object memoConvertido: TMemo
    Left = 447
    Top = 24
    Width = 281
    Height = 177
    TabOrder = 3
  end
end
