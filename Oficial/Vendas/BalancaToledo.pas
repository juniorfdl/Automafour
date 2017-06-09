unit BalancaToledo;

interface

  function AbrePorta(const Porta,BaudRate,DataBits,Paridade:Integer):Integer;stdcall;external 'P05.DLL';
  function FechaPorta:Integer;stdcall;external 'P05.DLL';
  function FechaPortaP05:Integer;stdcall;external 'P05.DLL';
  function PegaPeso(const OpcaoEscrita:integer;Peso,Local:Pchar):Integer;stdcall;external 'P05.DLL';
  function PegaPesoP05B(const OpcaoEscrita,PedeTara:integer;Peso,Local:Pchar):Integer;stdcall;external 'P05.DLL';
  procedure VersaoDLL(Versao:Pchar);stdcall;external 'P05.DLL';
  function DeterminaUmStopBit:Integer;stdcall;external 'P05.DLL';

const
  cSessaoConf   = 'CFG';
  cPorta        = 'Serial';
  cBaudRate     = 'BaudRate';
  cParidade     = 'Paridade';
  cDataBits     = 'DataBits';
  cDiponibi     = 'Diponibilizacao';
  cMinimizado   = 'Minimizado';
  cDirPESO      = 'DirPeso';
  cTempoLeitura = 'TempoLeitura';
  cTipoLeitura  = 'TipoLeitura';
  cContinuo     = 'Continuo';
  cUmStop       = 'UmStop';
  cSucesso      = 1;
  cFalha        = 0;
  cArquivoINI   = 'P05.INI';

type TDadosPeso = record
  Peso          : array[0..6] of char;
  Espaco        : char;
  Tara          : array[0..5] of char;
end;

implementation

end.
