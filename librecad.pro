TEMPLATE = subdirs
TARGET = librecad
CONFIG += ordered

SUBDIRS     = \
    libraries \
    librecad \
    plugins \
    tools

exists( custom.pro ):include( custom.pro )

# --------------------------------------------------------------------------------
# Install directories and files:
# --------------------------------------------------------------------------------

# Install fonts:
install_fonts.files += $$files(librecad/support/fonts/*.lff)
install_fonts.path = $$OUT_PWD/unix/resources/fonts
INSTALLS += install_fonts

# Install hatch patterns:
install_patterns.files += $$files(librecad/support/patterns/*.dxf)
install_patterns.path = $$OUT_PWD/unix/resources/patterns
INSTALLS += install_patterns

# Install library files:
install_libraryfiles.files += $$files(unix/resources/library)
install_libraryfiles.path = $$OUT_PWD/unix/resources
INSTALLS += install_libraryfiles

# Install doc files:
install_docfiles.files += $$files(unix/resources/doc)
install_docfiles.path = $$OUT_PWD/unix/resources
INSTALLS += install_docfiles

# Install tranlation files:
install_qmfiles.files += $$files(unix/resources/qm)
install_qmfiles.path = $$OUT_PWD/unix/resources
INSTALLS += install_qmfiles

