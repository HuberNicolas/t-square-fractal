# Windows (MinGW), original setup with SDL2 in E:\LibSDL
build:
	gcc -Wfatal-errors \
	-std=c99 \
	./*.c \
	-I"E:\LibSDL\include" \
	-L"E:\LibSDL\lib" \
	-lmingw32 \
	-lSDL2main \
	-lSDL2 \
	-o src.exe

# Linux and macOS, SDL2 found via sdl2-config
unix:
	gcc -std=c99 -Wall $(CFLAGS) \
	./*.c \
	$(shell sdl2-config --cflags) \
	-I$(shell sdl2-config --prefix)/include \
	$(shell sdl2-config --libs) \
	-o tsquare
