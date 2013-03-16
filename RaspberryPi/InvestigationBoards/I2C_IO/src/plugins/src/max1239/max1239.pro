TEMPLATE = lib
LANGUAGE = C++

CONFIG  += qt warn_on release plugin
QMAKE_CXXFLAGS += -Wno-deprecated
QT += xml network

DEFINES += VERSION=QString\\\(\\\"1.0-0\\\"\\\)

HEADERS += ../../../pluginInterfaces.h \
           max1239.h \
           settings.h

SOURCES += max1239.cpp \
           settings.cpp

ARCH  = $$system("uname -m")
OPSYS = $$system("uname")
DESTDIR = ../../

UI_DIR = .$$OPSYS-$$ARCH/ui
MOC_DIR = .$$OPSYS-$$ARCH/moc
OBJECTS_DIR = .$$OPSYS-$$ARCH/obj

#!build_pass:message("Generating source for documentation")
#!build_pass:system("doxygen doxygen.conf > /dev/null")
#!build_pass:message("Building documentation")
#!build_pass:system("make -C doc/latex > /dev/null")
#!build_pass:system("cp doc/latex/refman.pdf .")
#!build_pass:message("Documentation is available in refman.pdf")
