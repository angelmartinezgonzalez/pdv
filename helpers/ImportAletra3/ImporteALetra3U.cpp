//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ImporteALetra3U.h"
#include "Num2let.hpp"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::BtnClassFuncionaClick(TObject *Sender)
{
 TNum2Let *ConvNum2Let = new TNum2Let;

	   EditImporteEnLetra->Text = ConvNum2Let->NumALetra( StrToFloat( EditImporteEnNumero->Text ) );

 delete  ConvNum2Let;
}
//---------------------------------------------------------------------------
