unit ConverteOrdenado;

interface

uses
  ConverteTexto;

type
  TConverteOrdenado = class(TConverteTexto)
  public
    function Converter: String; override;
  end;

implementation

uses SysUtils, Classes;

{ TConverteOrdenado }

function TConverteOrdenado.Converter: String;
var
  Lista: TStringList;
  I: Integer;
  TextoOrdenado: String;
begin
  try
    Lista := TStringList.Create;
    Lista.Delimiter := ';';

    for I := 0 to length(Texto) do
      Lista.Add(Texto[I]);

    Lista.Sort;

    for I := 0 to Lista.Count - 1 do
      TextoOrdenado := TextoOrdenado + Lista[I];

    result := TextoOrdenado;
  finally
    if (Lista <> nil) then
      FreeAndNil(Lista);
  end;
end;

end.
