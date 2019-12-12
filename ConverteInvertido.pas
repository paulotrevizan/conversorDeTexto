unit ConverteInvertido;

interface

uses
  ConverteTexto;

type
  TConverteInvertido = class(TConverteTexto)
  public
    function Converter: String; override;
  end;

implementation

uses StrUtils;

{ TConverteInvertido }

function TConverteInvertido.Converter: String;
begin
  result := AnsiReverseString(Texto);
end;

end.
