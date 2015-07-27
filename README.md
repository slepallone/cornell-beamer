# Cornell Beamer Theme

This repository contains a Beamer theme for presentations, styled for
talks by Cornell University members.

## Repository Contents

- The file `beamerthemeCornell.sty` defines the Beamer theme; it
  relies on the `title_bg.pdf` image for rendering the title page
  background.

- The directory `exampletalk` contains a lengthy example of how to use
  this theme.

- The directory `minimal` contains a short example of how to use this
  theme.

## Usage

Using this theme is the same as using any other Beamer theme; just
`\usetheme{Cornell}` and start writing.

You should still look at the `exampletalk/exampletalk.tex` file for
details on how to use this theme effectively.

### Quick start

Look at the `Makefile` to see how the examples are built.

### More details

The `\usetheme{Cornell}` directive will cause Beamer to use this
theme. For this to work, the `beamerthemeCornell.sty` file needs to be
somewhere that LaTeX can find it. There are several options for this:

1. Copy the `beamerthemeCornell.sty` file to the same directory as
   your `.tex` file.
2. (Linux and mac) Symlink the `beamerthemeCornell.sty` file to the
   same directory as your `.tex` file.
3. Add the directory containing `beamerthemeCornell.sty` to the
   `TEXINPUTS` environment variable. See the `SConstruct` file for an
   example of automating this in your build system.

The `title_bg.pdf` is used by the `beamerthemeCornell.sty` file and
should be copied or symlinked along with it.

#### Symlinking the files

This is an alternative that allows for more flexibility. If you have
an existing git repository, it's easy to include the `.sty` file in
your presentation in a subdirectory. Add this repository as a
subdirectory of your presentation directory with the command `git
submodule add <address-to-this-repository>`. This gives you the
ability to make commits based on which version of the Beamer template
you wish to use.

Once this is done, the final step is to Symlink to files in the
subdirectory. In Linux, this can be done with `ln -s
<subdirectory>/beamerthemeCornell.sty ./beamerthemeCornell.sty` (and
similarly for `title_bg.pdf`).

Adding the theme as a submodule is better because it gives full
control to the user to specify which version is used in the
presentation. If the Beamer theme is updated, older presentations will
not be affected unless you want it to.

## Examples

The directory `exampletalk` contains a full example of how to use the
various features available. This is a good starting place for any
slides based on this theme.

The directory `minimal` contains a very minimal example of a
presentation using this style.

### Building the examples: using Make

Run `make` in the current directory to populate the `build` directory
with the examples.

### Building the examples: SCons

Run `scons` in the current directory to populate the `build` directory
with the examples.

## Acknowledgments

Thanks to James Mario Davis with starting the project, and all of
Cornell ORIE for feedback.
