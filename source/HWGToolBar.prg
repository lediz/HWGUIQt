/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#include "hbclass.ch"

CLASS HWGToolBar INHERIT HWGControl

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, cStyleSheet, bOnInit, lDisabled ) CLASS HWGToolBar

   IF valtype(oParent) == "O"
      IF oParent:oQt:metaObject():className() == "QMainWindow"
         ::oQt := oParent:oQt:addToolBar("")
      ELSE
         ::oQt := QToolBar():new(oParent:oQt)
         oParent:oQt:setToolBar(::oQt)
      ENDIF
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QToolBar():new(HWGFILO():last():oQt)
      ELSE
         ::oQt := QToolBar():new()
      ENDIF
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   ::activate()

   HWGFILO():add(self)

RETURN self

METHOD activate () CLASS HWGToolBar

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

RETURN NIL
