//---------------------------------------------------------------------------
#ifndef Num2LetH
#define Num2LetH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TNum2Let {
private:	// User declarations
public:		// User declarations
  String sUnidades [30];
  String sDecenas [7];
  String sCentenas [9];
  String __fastcall ConvNumero( double rNumero, bool bPesos );
  void __fastcall InicializaNumeros( );
  String __fastcall NumALetra( double Numero );

//	__fastcall TImporteALetra2F(TComponent* Owner);
};
//---------------------------------------------------------------------------
//extern PACKAGE TImporteALetra2F *ImporteALetra2F;
//---------------------------------------------------------------------------
#endif

