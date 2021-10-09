//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Num2let.hpp"
//---------------------------------------------------------------------------

//TNum2Let *Num2Let;   // este es como se llama
//---------------------------------------------------------------------------
//__fastcall TNum2Let::TNum2Let(TComponent* Owner)
//	: TForm(Owner)
//{
//}
void __fastcall TNum2Let::InicializaNumeros( )
{
  sUnidades[1 - 1] = "un";
  sUnidades[2 - 1] = "dos";
  sUnidades[3 - 1] = "tres";
  sUnidades[4 - 1] = "cuatro";
  sUnidades[5 - 1] = "cinco";
  sUnidades[6 - 1] = "seis";
  sUnidades[7 - 1] = "siete";
  sUnidades[8 - 1] = "ocho";
  sUnidades[9 - 1] = "nueve";
  sUnidades[10 - 1] = "diez";
  sUnidades[11 - 1] = "once";
  sUnidades[12 - 1] = "doce";
  sUnidades[13 - 1] = "trece";
  sUnidades[14 - 1] = "catorce";
  sUnidades[15 - 1] = "quince";
  sUnidades[16 - 1] = "diez y seis";
  sUnidades[17 - 1] = "diez y siete";
  sUnidades[18 - 1] = "diez y ocho";
  sUnidades[19 - 1] = "diez y nueve";
  sUnidades[20 - 1] = "veinte";
  sUnidades[21 - 1] = "veintiun";
  sUnidades[22 - 1] = "veintidos";
  sUnidades[23 - 1] = "veintitres";
  sUnidades[24 - 1] = "veinticuatro";
  sUnidades[25 - 1] = "veinticinco";
  sUnidades[26 - 1] = "veintiseis";
  sUnidades[27 - 1] = "veintisiete";
  sUnidades[28 - 1] = "veintiocho";
  sUnidades[29 - 1] = "veintinueve";
  sDecenas[1 - 1] = "treinta";
  sDecenas[2 - 1] = "cuarenta";
  sDecenas[3 - 1] = "cincuenta";
  sDecenas[4 - 1] = "sesenta";
  sDecenas[5 - 1] = "setenta";
  sDecenas[6 - 1] = "ochenta";
  sDecenas[7 - 1] = "noventa";
  sCentenas[1 - 1] = "ciento";
  sCentenas[2 - 1] = "doscientos";
  sCentenas[3 - 1] = "trescientos";
  sCentenas[4 - 1] = "cuatrocientos";
  sCentenas[5 - 1] = "quinientos";
  sCentenas[6 - 1] = "seiscientos";
  sCentenas[7 - 1] = "setecientos";
  sCentenas[8 - 1] = "ochocientos";
  sCentenas[9 - 1] = "novecientos";
}

String __fastcall TNum2Let::ConvNumero( double rNumero, bool bPesos )
{
 String result;
  int iNumero = 0, iDecimales = 0, iMillon = 0, iMil = 0, iCentena = 0, iDecena = 0, iUnidad = 0;
  String sRegreso;
  double rTemp = 0.0;
  sRegreso = "";
  iNumero =   (int) ( rNumero );      // elimina la parte decimal y solo obtiene la parte entera
  rTemp = StrToFloat( FormatFloat( "0.00", Frac( rNumero ) ) );
  rTemp = rTemp * 100;
  iDecimales =  (int) ( rTemp );
  iMillon = iNumero / 1000000;
  iNumero = iNumero - iMillon * 1000000;
  iMil = iNumero / 1000;
  iNumero = iNumero - iMil * 1000;
  iCentena = iNumero / 100;
  iNumero = iNumero - iCentena * 100;
  iDecena = iNumero / 10;
  iNumero = iNumero - iDecena * 10;
  iUnidad = iNumero;
  if ( iMillon > 0 )
    if ( iMillon > 1 )
      sRegreso = ConvNumero( iMillon, false ) + " millones";
    else
      sRegreso = "un millon";
  if ( iMil > 0 )
    sRegreso = sRegreso + " " + ConvNumero( iMil, false ) + " mil";
  if ( iCentena > 0 )
    if ( ( iCentena == 1 ) && ( iDecena == 0 ) && ( iUnidad == 0 ) )
      sRegreso = sRegreso + " cien";
	else
      sRegreso = sRegreso + " " + sCentenas[iCentena - 1];
  if ( iDecena > 0 )
	if ( iDecena < 3 )
	  sRegreso = sRegreso + " " + sUnidades[iDecena * 10 + iUnidad - 1];
	else
	  sRegreso = sRegreso + " " + sDecenas[iDecena - 2 - 1];
  if ( ( iUnidad > 0 ) && ( ( iDecena == 0 ) || ( iDecena > 2 ) ) )
  {
	if ( iDecena > 0 )
	  sRegreso = sRegreso + " y";
	sRegreso = sRegreso + " " + sUnidades[iUnidad - 1];
  }
  if ( sRegreso.SubString( 1, 1 ) == " " )
	sRegreso = sRegreso.SubString( 2, sRegreso.Length( ) - 1 );
  if ( bPesos )
	sRegreso = sRegreso + " pesos " + FormatFloat( "00", iDecimales ) + "/100 m.n.";
  result = sRegreso;
  return result;

}
/*
//---------------------------------------------------------------------------
void __fastcall TNum2Let::BtnConvierteNumALetraClick(TObject *Sender)
{
  double ImporteEnNumero = 0.0;
  String ImporteEnLetra;
  ImporteEnNumero = StrToFloat( EditImporteEnNumero->Text );
  InicializaNumeros();
  ImporteEnLetra = UpperCase( ConvNumero( ImporteEnNumero, true ) );
  EditImporteEnLetra->Text = ImporteEnLetra;
}   */
//---------------------------------------------------------------------------
/*
void __fastcall TNum2Let::Button1Click(TObject *Sender)
{
float precio = StrToFloat(EditImporteEnNumero->Text);
int pesos;
int centavos;
pesos = (int) precio;
centavos = (int)( (precio-pesos)*100 );

   EditImporteEnLetra->Text =     IntToStr(pesos);
   Edit1->Text = IntToStr(centavos);
}       */
//---------------------------------------------------------------------------
String __fastcall TNum2Let::NumALetra( double Numero )
{
  String result;
  result = "";
  InicializaNumeros();
  result = UpperCase( ConvNumero( Numero, true ) );
  return result;
}

//---------------------------------------------------------------------------

