/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oPanel

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HPanel" SIZE 320,240

   @ 10,10 PANEL oPanel ;
      SIZE 200,200 ;
      TOOLTIP "tooltip do objeto oPanel" ;
      WHATSTHIS "whatsthis do objeto oPanel" ;
      OF oDialog

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN