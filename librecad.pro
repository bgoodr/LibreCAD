TEMPLATE = subdirs
TARGET = librecad
CONFIG += ordered

SUBDIRS     = \
    libraries \
    librecad \
    plugins \
    tools

exists( custom.pro ):include( custom.pro )

# I cannot use custom.pro file because it is in the .gitignore file,
# and I want to be able to check this into my local repository in GitHub:

# Force the fonts to get installed to where librecad will see them when running under qtcreator: 
myfonts.files += $$files(librecad/support/fonts/*.lff)
myfonts.path = $$OUT_PWD/unix/resources/fonts
INSTALLS += myfonts

# Force the hatch patterns to get installed to where librecad will see them when running under qtcreator: 
mypatterns.files += $$files(librecad/support/patterns/*.dxf)
mypatterns.path = $$OUT_PWD/unix/resources/patterns
INSTALLS += mypatterns

# Force the library files to get installed to where librecad will see them when running under qtcreator: 
mylibraryfiles.files += $$files(unix/resources/library)
mylibraryfiles.path = $$OUT_PWD/unix/resources
INSTALLS += mylibraryfiles

# Force the doc files files to get installed to where librecad will see them when running under qtcreator: 
mydocfiles.files += $$files(unix/resources/doc)
mydocfiles.path = $$OUT_PWD/unix/resources
INSTALLS += mydocfiles

# Force the qm tranlation files to get installed to where librecad will see them when running under qtcreator: 
myqmfiles.files += $$files(unix/resources/qm)
myqmfiles.path = $$OUT_PWD/unix/resources
INSTALLS += myqmfiles

