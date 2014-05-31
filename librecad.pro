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
myfonts.path = $$OUT_PWD/unix/resources/fonts
myfonts.files += $$files(librecad/support/fonts/*.lff)
INSTALLS += myfonts

