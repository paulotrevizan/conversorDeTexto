program ConversorDeTexto;

uses
  Forms,
  Principal in 'Principal.pas' {fPrincipal},
  Conversao in 'Conversao.pas',
  ConverteTexto in 'ConverteTexto.pas',
  ConverteInvertido in 'ConverteInvertido.pas',
  ConvertePrimeiraMaiuscula in 'ConvertePrimeiraMaiuscula.pas',
  ConverteOrdenado in 'ConverteOrdenado.pas',
  ConversaoFactory in 'ConversaoFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
