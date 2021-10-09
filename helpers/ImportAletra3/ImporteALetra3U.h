//---------------------------------------------------------------------------

#ifndef ImporteALetra3UH
#define ImporteALetra3UH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TEdit *EditImporteEnNumero;
	TEdit *EditImporteEnLetra;
	TButton *BtnConvierteNumALetra;
	TButton *Button1;
	TEdit *Edit1;
	TButton *BtnClassFunciona;
	TButton *Button3;
	void __fastcall BtnClassFuncionaClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
