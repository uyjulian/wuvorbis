
LIBOGG_SOURCES += external/ogg/src/bitwise.c external/ogg/src/framing.c
LIBVORBIS_SOURCES += external/vorbis/lib/analysis.c external/vorbis/lib/bitrate.c external/vorbis/lib/block.c external/vorbis/lib/codebook.c external/vorbis/lib/envelope.c external/vorbis/lib/floor0.c external/vorbis/lib/floor1.c external/vorbis/lib/smallft.c external/vorbis/lib/psy.c external/vorbis/lib/info.c external/vorbis/lib/lpc.c external/vorbis/lib/lsp.c external/vorbis/lib/mapping0.c external/vorbis/lib/mdct.c external/vorbis/lib/registry.c external/vorbis/lib/res0.c external/vorbis/lib/sharedbook.c external/vorbis/lib/synthesis.c external/vorbis/lib/vorbisfile.c external/vorbis/lib/window.c

SOURCES += WuVorbisMainUnit.cpp detect_cpu.cpp
SOURCES += $(LIBOGG_SOURCES) $(LIBVORBIS_SOURCES)

INCFLAGS += -Iexternal/vorbis/include -Iexternal/ogg/include
CFLAGS += -DDECODE_ONLY

PROJECT_BASENAME = wuvorbis

USE_TVPSND = 1

include external/tp_stubz/Rules.lib.make
