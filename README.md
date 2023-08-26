![Nvim logo](./img/logo.png)

<p align="center">
    <h1 align="center">My Neovim Configuration</h1>
</p>

This repository contains my personal configuration for the Neovim text editor. 
Feel free to use it as a starting point for your own configuration, or just 
pick and choose the settings you like.

## Installation

1. Install Neovim (version 0.5 or higher) on your system.

2. Install Packer on your system.

3. Clone this repository into your `~/.config/` directory:

```sh
git clone https://github.com/Johanx22x/nvim.git ~/.config/nvim
```

4. Start Neovim and run :PackerInstall command to install any 
plugins specified in the configuration file.
Note: If :PackerInstall does not appear it is due to a bad installation 
of Packer, make sure to verify that it is installed correctly. On Arch 
Linux the package appears as `nvim-packer-git` in the AUR.

## Dependencies

- `Python3`: Required for various plugins, such as `UltiSnips`.

## Usage

The configuration file is divided into several sections, each with its own 
set of settings. Here's a brief overview of what's included:

- `settings.lua`: Here are the general Neovim settings such as the color scheme, 
transparency, among others.

- `lsp.lua`: LSPs configuration.

- `mappings.lua`: The key mapping.

- `plugins/init.lua`: Here is the list of all the plugins for the Neovim configuration.

- `plugins/setup.lua`: Load specific settings for each plugin.

- `plugins/<plugin-name>.lua`: Plugin configuration.

## Contributing 

If you find any bugs or have suggestions for improving this configuration, feel 
free to open an issue or submit a pull request. However, please keep in mind 
that this configuration is tailored to my personal preferences, so I may not 
accept all suggestions.

## License

This configuration is released under the [MIT License](./LICENSE).
