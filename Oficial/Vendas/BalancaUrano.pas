unit BalancaUrano;

interface

// Declaração das funções da dll LePeso.Dll
Function _AbrePortaSerial(Canal: String): Integer; stdcall; external 'LePeso.dll';
Function _FechaPortaSerial(): Integer; stdcall; external 'LePeso.dll';
Function _AlteraModeloBalanca(Modelo: Integer) : Integer; stdcall; external 'LePeso.dll';
Function _AlteraModoOperacao(Modo: Integer): Integer; stdcall; external 'LePeso.dll';
Function _LePeso(): Pchar; stdcall; external 'LePeso.dll';

implementation

end.
 