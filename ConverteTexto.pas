unit ConverteTexto;

interface

uses
  Conversao;

type
  TConverteTexto = class(TInterfacedObject, IConversao)

  private
    FTexto: String;
    procedure setTexto(const value: String);
  public
    property Texto: String read FTexto write setTexto;
    function Converter: String; virtual; abstract;
  end;

implementation

uses SysUtils;

{ TConverteTexto }

procedure TConverteTexto.setTexto(const value: String);
begin
  if (Trim(value) = '') then
    raise Exception.Create('Deve informar um texto antes de realizar alguma conversão!');
  FTexto := value;
end;

end.
