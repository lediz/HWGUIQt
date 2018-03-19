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
   LOCAL oDial1
   LOCAL oDial2

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HWGDial" SIZE 320,240

   @ 10,10 DIAL oDial1 SIZE 100,100

   @ 10,120 DIAL oDial2 SIZE 100,100

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN