unit ConversaoFactory;

interface

uses
  ConverteTexto, ConverteInvertido, ConvertePrimeiraMaiuscula, ConverteOrdenado;

type
  TTipoConversao = (tpConverteInvertido, tpConvertePrimeiraMaiuscula, tpConverteOrdenado);
  TConversaoFactory = class
    class function Converter(ATipo: TTipoConversao): TConverteTexto;
end;

implementation

{ TConversaoFactory }

class function TConversaoFactory.Converter(
  ATipo: TTipoConversao): TConverteTexto;
begin
 case ATipo of
   tpConverteInvertido: result := TConverteInvertido.Create;
   tpConvertePrimeiraMaiuscula: result := TConvertePrimeiraMaiuscula.Create;
   tpConverteOrdenado: result := TConverteOrdenado.Create;
 end;

end;

end.
