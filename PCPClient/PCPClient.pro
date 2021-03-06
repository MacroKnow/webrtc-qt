#-------------------------------------------------
#
# Project created by QtCreator 2014-02-13T09:15:23
#
#-------------------------------------------------

QT  += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PCPClient
TEMPLATE = app


DESTDIR = $$PWD/../bin


INCLUDEPATH     += $$PWD/.. \
    ../third_party/jsoncpp/overrides/include ../third_party/jsoncpp/source/include \

DEFINES += JSONCPP_RELATIVE_PATH


win32 {

Debug:DEFINES += _DEBUG

Release:DEFINES +=

DEFINES += _UNICODE UNICODE WIN32_LEAN_AND_MEAN

LIBS += -lwinmm -liphlpapi -lcomsupp -lsecur32 -lws2_32  -lcrypt32 -lAdvapi32 -luser32


LIBS += -L$$DESTDIR \
           -ljsoncpp -ljingle -ljingle_p2p -ljingle_app
} else:mac {
} else {

}







SOURCES += main.cpp\
        mainwindow.cpp \
    conductor.cc \
    defaults.cc \
    peer_connection_client.cc

HEADERS += mainwindow.h \
    conductor.h \
    defaults.h \
    main_wnd.h \
    peer_connection_client.h
