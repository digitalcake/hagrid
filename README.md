# FYI: 
## This app does not work and I only left this repo as an archive

# Hagrid
> Don't send a butler to do a wizard's job.

![demo](https://github.com/digitalcake/hagrid/raw/master/demo.gif)

Hagrid is a Alfred 3 workflow that will search hex.pm for the current version
for a given package. Selecting a package will place that dep with the current
version in your clipboard.

## Dependencies
* Elixir
* Alfred 3

## Installation
1. Run `mix escript.install https://github.com/digitalcake/hagrid/raw/master/hagrid` in your terminal
2. Answer yes to the prompt to install
3. Download and install [Alfred 3 workflow](https://github.com/digitalcake/hagrid/raw/master/Hagrid.alfredworkflow)

## Usage
1. Open Alfrend's prompt and type `hex {Search term}`
2. You should see a list of packages after the search is complete. (Note: my
   search is not the fastest).
3. Selecting a package places that dep in your clipboard.

Hagrid was based on Cifer-Y's hex_wf
[https://github.com/Cifer-Y/hex_wf](https://github.com/Cifer-Y/hex_wf)
