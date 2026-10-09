<div align="center">

# Hilbert Curve

**Draws a T-square fractal with SDL2 in C**

![C](https://img.shields.io/badge/C99-A8B9CC?logo=c&logoColor=black)
![SDL2](https://img.shields.io/badge/SDL2-1E5297)
![License](https://img.shields.io/badge/License-MIT-yellow)

[Build](#build) · [Course](#course) · [License](#license)

</div>

> [!NOTE]
> Coursework for Informatik II at the University of Zurich, written in December 2020. It is kept as submitted and
> is not developed further. Despite the repository name, the program draws a
> [T-square fractal](https://en.wikipedia.org/wiki/T-square_(fractal)), not a Hilbert curve.

## What it does

[`main.c`](main.c) opens a 1000 × 1000 window and recursively draws filled squares: each square gets four squares of
half its size centred on its corners, down to 9 levels. The window stays open until you click into it.

## Build

You need a C compiler and [SDL2](https://www.libsdl.org/).

### Linux and macOS

Install SDL2, for example with `sudo apt install libsdl2-dev` or `brew install sdl2`, then:

```bash
make unix
```

```bash
./tsquare
```

On an Apple Silicon Mac with an Intel Homebrew SDL2 (`/usr/local`), build for x86_64:

```bash
make unix CFLAGS="-arch x86_64"
```

### Windows (original setup)

The `build` target expects MinGW and SDL2 under `E:\LibSDL`; adjust the paths in the [`makefile`](makefile).

```bash
mingw32-make build
```

This creates `src.exe`. The SDL2 setup followed these videos:
[1](https://www.youtube.com/watch?v=ybYMOKEW9IY&t=908), [2](https://www.youtube.com/watch?v=7sIBklOTImI).

## Course

Informatik II, University of Zurich, 2020. The original submission is tagged
[`v1.0.0`](https://github.com/HuberNicolas/hilbert-curve/releases/tag/v1.0.0); it includes the compiled `src.exe`.

## License

[MIT](LICENSE) © 2020 Nicolas Huber
