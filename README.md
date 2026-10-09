<div align="center">

# T-Square Fractal

**Draws a T-square fractal with SDL2 in C**

![C](https://img.shields.io/badge/C99-A8B9CC?logo=c&logoColor=black)
![SDL2](https://img.shields.io/badge/SDL2-1E5297)
![License](https://img.shields.io/badge/License-MIT-yellow)

</div>

> [!NOTE]
> Personal project from 2020, not developed further.

[`main.c`](main.c) recursively draws squares, each with four half-size squares on its corners, 9 levels deep.
Click into the window to close it.

## Build

Requires [SDL2](https://www.libsdl.org/) (`brew install sdl2` or `sudo apt install libsdl2-dev`).

```bash
make unix
```

```bash
./tsquare
```

On Windows, the original `build` target uses MinGW with SDL2 in `E:\LibSDL` (see [`makefile`](makefile)).
The SDL2 setup followed these videos: [1](https://www.youtube.com/watch?v=ybYMOKEW9IY&t=908),
[2](https://www.youtube.com/watch?v=7sIBklOTImI).

## License

[MIT](LICENSE) © 2020 Nicolas Huber
