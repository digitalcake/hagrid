# Hagrid
> Don't send a butler to do a wizard's job.

Hagrid is a Alfred 3 workflow that will search hex.pm for the current version
for a given package. Selecting a package will place that dep with the current
version in your clipboard.

## Dependencies
* Elixir
* Alfred 3

## Installation
1. this workflow assume the user has elixir environment.
2. clone this repo
3. cd to the project root, then run: `mix deps` to get mix dependencies
4. next run `escript.build` to generate a script that the workflow will use called `hagrid`
4. `mv hagrid /usr/local/bin/`
5. `open HAGRID.alfredworkflow`
6. then you can use this workflow

## Usage
1. Open Alfrend's prompt and type `hex {Search term}`
2. You should see a list of packages after the search is complete. (Note: my
   search is not the fastest).
3. Selecting a package places that dep in your clipboard.

Hagrid was based on Cifer-Y's hex_wf
[https://github.com/Cifer-Y/hex_wf](https://github.com/Cifer-Y/hex_wf)
