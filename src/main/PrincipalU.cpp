//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PrincipalU.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TPrincipalF *PrincipalF;
//---------------------------------------------------------------------------
__fastcall TPrincipalF::TPrincipalF(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPrincipalF::FormCreate(TObject *Sender)
{
	PrincipalF->WindowState = wsMaximized;


}
//---------------------------------------------------------------------------

