unit CImporteNL;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

  type
  TCImporteNL = class
    { Procedure declarations }
    { Function declarations }
  private
    { Private declarations }
    constructor Create; virtual;
    destructor Destroy; override;
  public
    { Public declarations }
    sUnidades : Array [1..30] of String;
    sDecenas  : Array [1..7] of String;
    sCentenas : Array [1..9] of String;

    function ConvNumero(rNumero:Real; bPesos :boolean):String;
    function NumALetra(Numero:Real): String;
    procedure InicializaNumeros;

  published

  end;

implementation


constructor TCImporteNL.Create;
begin
  inherited Create;
end;

destructor TCImporteNL.Destroy;
begin
  inherited Destroy;
end;

function TCImporteNL.ConvNumero(rNumero:Real; bPesos :boolean):String;
var
    iNumero, iDecimales, iMillon, iMil, iCentena, iDecena, iUnidad: LongInt;
    sRegreso : String;
    rTemp : real;
begin
    sRegreso := '';
    iNumero := System.Trunc(rNumero);      // elimina la parte decimal y solo obtiene la parte entera
    rTemp := StrToFloat(FormatFloat('0.00',Frac(rNumero)));
    rTemp := rTemp * 100;
    iDecimales := Trunc(rTemp); //posible error aqui
//    iDecimales := Round(rTemp);

    iMillon := iNumero div 1000000;
    iNumero := iNumero - iMillon * 1000000;
    iMil := iNumero div 1000;
    iNumero := iNumero - iMil * 1000;
    iCentena := iNumero div 100;
    iNumero := iNumero - iCentena * 100;
    iDecena := iNumero div 10;
    iNumero := iNumero - iDecena * 10;
    iUnidad := iNumero;

    if(iMillon > 0) then
        if(iMillon > 1) then
            sRegreso := ConvNumero(iMillon,false) + ' millones'
        else
            sRegreso := 'un millon';
    if(iMil > 0) then
        sRegreso := sRegreso + ' ' + ConvNumero(iMil,false) + ' mil';
    if(iCentena > 0) then
        if(iCentena = 1) and (iDecena = 0) and (iUnidad = 0) then
            sRegreso := sRegreso + ' cien'
        else
            sRegreso := sRegreso + ' ' + sCentenas[iCentena];
    if(iDecena > 0) then
        if(iDecena < 3) then
            sRegreso := sRegreso + ' ' + sUnidades[iDecena*10+iUnidad]
        else
            sRegreso := sRegreso + ' ' + sDecenas[iDecena-2];
    if(iUnidad > 0) and ((iDecena = 0) or (iDecena > 2)) then begin
        if(iDecena > 0) then
            sRegreso := sRegreso + ' y';
        sRegreso := sRegreso + ' ' + sUnidades[iUnidad];
    end;
    if(Copy(sRegreso,1,1) = ' ') then
        sRegreso := Copy(sRegreso,2,Length(sRegreso)-1);
     if(bPesos) then
        sRegreso := sRegreso + ' pesos ' + FormatFloat('00',iDecimales) + '/100 m.n.';
    Result := sRegreso;
end;


procedure TCImporteNL.InicializaNumeros;
begin
    sUnidades[1] := 'un';
    sUnidades[2] := 'dos';
    sUnidades[3] := 'tres';
    sUnidades[4] := 'cuatro';
    sUnidades[5] := 'cinco';
    sUnidades[6] := 'seis';
    sUnidades[7] := 'siete';
    sUnidades[8] := 'ocho';
    sUnidades[9] := 'nueve';
    sUnidades[10] := 'diez';
    sUnidades[11] := 'once';
    sUnidades[12] := 'doce';
    sUnidades[13] := 'trece';
    sUnidades[14] := 'catorce';
    sUnidades[15] := 'quince';
    sUnidades[16] := 'diez y seis';
    sUnidades[17] := 'diez y siete';
    sUnidades[18] := 'diez y ocho';
    sUnidades[19] := 'diez y nueve';
    sUnidades[20] := 'veinte';
    sUnidades[21] := 'veintiun';
    sUnidades[22] := 'veintidos';
    sUnidades[23] := 'veintitres';
    sUnidades[24] := 'veinticuatro';
    sUnidades[25] := 'veinticinco';
    sUnidades[26] := 'veintiseis';
    sUnidades[27] := 'veintisiete';
    sUnidades[28] := 'veintiocho';
    sUnidades[29] := 'veintinueve';

    sDecenas[1] := 'treinta';
    sDecenas[2] := 'cuarenta';
    sDecenas[3] := 'cincuenta';
    sDecenas[4] := 'sesenta';
    sDecenas[5] := 'setenta';
    sDecenas[6] := 'ochenta';
    sDecenas[7] := 'noventa';

    sCentenas[1] := 'ciento';
    sCentenas[2] := 'doscientos';
    sCentenas[3] := 'trescientos';
    sCentenas[4] := 'cuatrocientos';
    sCentenas[5] := 'quinientos';
    sCentenas[6] := 'seiscientos';
    sCentenas[7] := 'setecientos';
    sCentenas[8] := 'ochocientos';
    sCentenas[9] := 'novecientos';
end;


function TCImporteNL.NumALetra(Numero:Real): String;
begin
   Result := '';

   InicializaNumeros;
   Result :=    UpperCase(ConvNumero( Numero ,true))  ;


end;

end.
