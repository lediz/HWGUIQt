/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> SAY [ <oObj> CAPTION ] <cText> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ COLOR <xForeColor> ] ;
            [ BACKCOLOR <xBackColor> ] ;
            [ ON INIT <bInit> ] ;
            [ ON CLICK <bClick> ] ;
            [ ON DBLCLICK <bDblClick> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGStatic)():new( <oParent>, ;
                                           <nX>, ;
                                           <nY>, ;
                                           <nWidth>, ;
                                           <nHeight>, ;
                                           <cToolTip>, ;
                                           <cStatusTip>, ;
                                           <cWhatsThis>, ;
                                           <cStyleSheet>, ;
                                           <oFont>, ;
                                           <xForeColor>, ;
                                           <xBackColor>, ;
                                           <cText>, ;
                                           <{bInit}>, ;
                                           <{bClick}>, ;
                                           <{bDblClick}> )
