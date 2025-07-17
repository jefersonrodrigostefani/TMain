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

program main;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces,
  Forms,
  ufrm_principal;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=False;
  Application.Title:='TMain';
  Application.Initialize;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.

