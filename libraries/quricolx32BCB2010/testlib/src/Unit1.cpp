//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"

#include "quricol.h"
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
void __fastcall TForm1::Button1Click(TObject *Sender)
{

  // el primer parametro es el nombre del archivo imagen,
  //el segundo es texto que tendra que ser convertido en grafico,
  //el tercero el margen con1 esta bien, y
  //el cuarto el tama�o de la imagen con 10 esta bien
  // ell quinto es el nivel de calidad de la imagen
  GeneratePNGA("elqurcode.png","adasdasdas", 1,10,3);
  /*los niveles van del 0 el mas bajo al 1  2  3 el mas alto
  typedef enum {
	QR_ECLEVEL_L = 0, ///< lowest
	QR_ECLEVEL_M,
	QR_ECLEVEL_Q,
	QR_ECLEVEL_H      ///< highest
} QRecLevel;

  */
}
//---------------------------------------------------------------------------
