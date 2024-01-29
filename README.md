# 󰞋 floating-help

`floating-help` opens the help buffer in a floating window.

## 📦 Installation

Install the plugin with your preferred package manager:

[lazy.nvim](https://github.com/folke/lazy.nvim):

<!-- setup:start -->

```lua
{
  "nil70n/floating-help",
  -- optional
  opts = { border = 'single' }
}
```

<!-- setup:end -->

## ⚙️ Configuration

**floating-help** is a very simple plugin and does not have much options to configure. The available options are listed below.

<details><summary>Default Settings</summary>

<!-- config:start -->

```lua
{
  border = 'none'
}
```
<!-- config:end -->


* border: Style of (optional) window border. This can either be a string or an array. The string values are
"none": No border (default).
"single": A single line box.
"double": A double line box.
"rounded": Like "single", but with rounded corners ("╭" etc.).
"solid": Adds padding by a single whitespace cell.
"shadow": A drop shadow effect by blending with the background.
If it is an array, it should have a length of eight or any divisor of eight. The array will specify the eight chars building up the border in a clockwise fashion starting with the top-left corner. As an example, the double box style could be specified as [ "╔", "═" ,"╗", "║", "╝", "═", "╚", "║" ]. If the number of chars are less than eight, they will be repeated. Thus an ASCII border could be specified as [ "/", "-", "\\", "|" ], or all chars the same as [ "x" ]. An empty string can be used to turn off a specific border, for instance, [ "", "", "", ">", "", "", "", "<" ] will only make vertical borders but not horizontal ones. By default, FloatBorder highlight is used, which links to WinSeparator when not defined. It could also be specified by character: [ ["+", "MyCorner"], ["x", "MyBorder"] ].

</details>

##  Todo

**floating-help** is in very early development and there are the pending features planned:

- [ ] Relative window centralization
- [ ] Default to centralize in the editor
- [ ] Option to open the help in a vsplit
