QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = term
TEMPLATE = app


DEFINES += QT_DEPRECATED_WARNINGS


CONFIG += c++11


HEADERS += ./Emulation.h \
    ./Filter.h \
    ./HistorySearch.h \
    ./kprocess.h \
    ./wcwidth.h \
    ./qtermwidget.h \
    ./History.h \
    ./Screen.h \
    ./ScreenWindow.h \
    ./SearchBar.h \
    ./Session.h \
    ./TerminalDisplay.h \
    ./Vt102Emulation.h

SOURCES += ./main.cpp \
    ./ColorScheme.cpp \
    ./Emulation.cpp \
    ./Filter.cpp \
    ./History.cpp \
    ./HistorySearch.cpp \
    ./KeyboardTranslator.cpp \
    ./wcwidth.cpp \
    ./kprocess.cpp \
    ./qtermwidget.cpp \
    ./Screen.cpp \
    ./ScreenWindow.cpp \
    ./SearchBar.cpp \
    ./Session.cpp \
    ./ShellCommand.cpp \
    ./TerminalCharacterDecoder.cpp \
    ./TerminalDisplay.cpp \
    ./tools.cpp \
    ./Vt102Emulation.cpp

FORMS += ./SearchBar.ui
RESOURCES += qterm.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
