unit ConvertePrimeiraMaiuscula;

interface

uses ConverteTexto;

type
  TConvertePrimeiraMaiuscula = class(TConverteTexto)
  public
    function Converter: String; override;
  end;

implementation

uses SysUtils;

{ TConvertePrimeiraMaiuscula }

function TConvertePrimeiraMaiuscula.Converter: String;
var
  Tamanho, J: Integer;
  i: byte;
begin
  Result := AnsiLowerCase(Texto);
  Tamanho := Length(Result);
  for J := 1 to tamanho do
    if (J = 1) or ((J>1) and (result[j-1]=Chr(32))) then
      result[j] := AnsiUpperCase(result[j])[1];
end;

end.
