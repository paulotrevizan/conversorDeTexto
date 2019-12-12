unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfPrincipal = class(TForm)
    lbTextoOriginal: TLabel;
    memoOriginal: TMemo;
    rgOpcoesConversao: TRadioGroup;
    btnConverter: TButton;
    memoConvertido: TMemo;
    lbTextoConvertido: TLabel;
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses ConversaoFactory, ConverteTexto;

{$R *.dfm}

procedure TfPrincipal.btnConverterClick(Sender: TObject);
var
  ConverteTexto: TConverteTexto;
  TextoConvertido: String;
begin
  if (rgOpcoesConversao.ItemIndex = -1) then
    raise Exception.Create('Informe o tipo de conversão que será realizada!');

  try
    try
      ConverteTexto := TConversaoFactory.Converter(TTipoConversao(rgOpcoesConversao.ItemIndex));
      ConverteTexto.Texto := memoOriginal.Lines.Text;
      TextoConvertido := ConverteTexto.Converter;

      memoConvertido.Clear;
      memoConvertido.Text := Trim(TextoConvertido);
    except on E:Exception do
      begin
        raise Exception.Create('Falha ao executar a conversão do texto! Erro: ' + e.Message);
      end;
    end
  finally
    if (ConverteTexto <> nil) then
      FreeAndNil(ConverteTexto);
  end;
end;

end.
