#define OTHER_LIBS interrogatedb:c dconfig:c dtoolconfig:m \
                   dtoolutil:c dtoolbase:c dtool:m

#define USE_NURBSPP yes

#begin lib_target
  #define TARGET egg2pg
  #define LOCAL_LIBS \
    parametrics collide egg builder loader chan char

  #define COMBINED_SOURCES $[TARGET]_composite1.cxx $[TARGET]_composite2.cxx 

  #define SOURCES \
    animBundleMaker.h \
    characterMaker.h \
    computedVerticesMaker.I computedVerticesMaker.h \
    computedVerticesMakerEntity.I computedVerticesMakerEntity.h \
    config_egg2pg.h \
    deferredNodeProperty.h \
    eggBinner.h \
    eggLoader.h \
    load_egg_file.h \
    loaderFileTypeEgg.h

  #define INCLUDED_SOURCES \
    animBundleMaker.cxx \
    characterMaker.cxx \
    computedVerticesMaker.cxx \
    config_egg2pg.cxx \
    deferredNodeProperty.cxx \
    eggBinner.cxx \
    eggLoader.cxx \
    load_egg_file.cxx \
    loaderFileTypeEgg.cxx

  #if $[DONT_COMBINE_PGRAPH]    
    #define SOURCES $[SOURCES] $[INCLUDED_SOURCES]
    #define INCLUDED_SOURCES
    #define COMBINED_SOURCES
  #endif

  #define INSTALL_HEADERS \
    load_egg_file.h config_egg2pg.h

#end lib_target
