TEMPLATE = app
LANGUAGE = C++

CONFIG  += qt warn_on release
QMAKE_CXXFLAGS += -Wno-deprecated
QT += xml network

DEFINES += TOLERANCE=1e-9 VERSION=QString\\\(\\\"pre-1.0-0\\\"\\\)

HEADERS += eventLoop.h \
           pluginInterfaces.h

SOURCES += main.cpp \
           eventLoop.cpp

ARCH  = $$system("uname -m")
OPSYS = $$system("uname")
DESTDIR = ../../bin-$$ARCH/

UI_DIR = .$$OPSYS-$$ARCH/ui
MOC_DIR = .$$OPSYS-$$ARCH/moc
OBJECTS_DIR = .$$OPSYS-$$ARCH/obj

#!build_pass:message("Generating source for documentation")
#!build_pass:system("doxygen doxygen.conf > /dev/null")
#!build_pass:message("Building documentation")
#!build_pass:system("make -C doc/latex > /dev/null")
#!build_pass:system("cp doc/latex/refman.pdf .")
#!build_pass:message("Documentation is available in refman.pdf")
