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
   LOCAL oGrid

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HWGGrid" SIZE 320,240

   @ 10,10 GRID oGrid SIZE 320-20,240-20 ITEMCOUNT 1000

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
