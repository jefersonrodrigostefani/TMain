{******************************************************************************}
{*                                                                            *}
{*                                   TMain                                    *}
{*                                JRS.NET.BR                                  *}
{*                             Programa principal                             *}
{*                                                                            *}
{* Autor: Jrs                                                                 *}
{* Data.: 17/07/2025                                                          *}
{*                                                                            *}
{******************************************************************************}

unit ufrm_principal;

{$mode objfpc}{$H+}

interface

uses
  { Units Nativas }
  Classes,
  SysUtils,
  Forms,
  Controls,
  Graphics,
  Dialogs,
  ComCtrls,
  { Units Terceiros }
  SpkToolbar,
  spkt_Tab,
  spkt_Pane,
  spkt_Buttons;

type

  { Tfrm_principal }

  Tfrm_principal = class(TForm)
    img_lst_032: TImageList;
    img_lst_016: TImageList;
    pgc_tdi_frm: TPageControl;
    spk_btn_001: TSpkLargeButton;
    spk_btn_002: TSpkLargeButton;
    spk_btn_003: TSpkLargeButton;
    spk_pnl_001: TSpkPane;
    spk_tab_001: TSpkTab;
    spk_tlb_frm: TSpkToolbar;
    stb_frm_reg: TStatusBar;
    tbs_aba_001: TTabSheet;
    procedure FormShow(Sender: TObject);
  private
    procedure Mostrar;
  public

  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.lfm}

procedure Tfrm_principal.Mostrar;
begin
  Self.Caption               := 'TMain - Ponto de Partida';
  stb_frm_reg.Panels[0].Text := 'Conexao: ?';
  stb_frm_reg.Panels[1].Text := 'Máquina: ?';
  stb_frm_reg.Panels[2].Text := 'Usuário: ?';
end;

procedure Tfrm_principal.FormShow(Sender: TObject);
begin
  Mostrar;
end;

end.

