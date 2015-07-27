# Cornell Beamer Theme


## Repository Contents

If you are from Cornell University and you want make LaTeX Beamer
presentations look good, use this template. The file
`./exampletalk.tex` shows how to use the template effectively, and
`./exampletalk.pdf` is the corresponding compiled PDF file.

## Usage

The `\usetheme{Cornell}` directive will cause Beamer to use this
theme. For this to work, the `beamerthemeCornell.sty` file needs to be
somewhere that LaTeX can find it. There are several options for this:

1. Copy the `beamerthemeCornell.sty` file to the same directory as
   your `.tex` file.
2. (Linux and mac) Symlink the `beamerthemeCornell.sty` file to the
   same directory as your `.tex` file.
3. Add the directory containing `beamerthemeCornell.sty` to the
   `TEXINPUTS` environment variable.

The `title_bg.pdf` is used by the `beamerthemeCornell.sty` file and
should be copied or symlinked along with it.

### Symlinking the files

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

## Example

The `exampletalk.tex` file gives examples of the various features
available. This is a good starting place for any slides based on this
theme.

## Acknowledgments

Thanks to James Mario Davis with starting the project, and all of
Cornell ORIE for feedback.
