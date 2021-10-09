//---------------------------------------------------------------------------

#ifndef PrincipalUH
#define PrincipalUH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TPrincipalF : public TForm
{
__published:	// IDE-managed Components
	TImage *Image1;
	TPanel *PanelLogin;
	TGroupBox *GroupBox1;
	TLabel *LabelLoginUsuario;
	TLabel *LabelLoginContra;
	TLabel *LabelLoginInfo;
	TEdit *EditUsuario;
	TEdit *EditContra;
	TBitBtn *BtnIngresar;
	void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TPrincipalF(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TPrincipalF *PrincipalF;
//---------------------------------------------------------------------------
#endif
