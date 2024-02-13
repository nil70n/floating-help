# ❓ floating-help

`floating-help` opens the help buffer in a floating window.
![Preview](/assets/help.png)

## 📦 Installation

Install the plugin with your preferred package manager:

[lazy.nvim](https://github.com/folke/lazy.nvim):

<!-- setup:start -->

```lua
{
  'nil70n/floating-help',
  -- optional
  opts = {
   border = 'single',
   ratio = 0.6
  }
}
```

<!-- setup:end -->

**floating-help** does not require the execution of the `setup` function, so you can just add the reference and start using the plugin:

<!-- short_setup:start -->

```lua
{ 'nil70n/floating-help' }
```

<!-- short_setup:end -->



## ⚙️ Configuration

**floating-help** is a straightforward plugin with few configuration options. The available options are listed below.

<details><summary>Default Settings</summary>

<!-- config:start -->

```lua
{
  border = 'solid',
  ratio = 0.8
}
```
<!-- config:end -->

* border: Style of (optional) window border. The accepted string values are:
  * 'solid': Adds padding by a single whitespace cell (default).
  * 'none': No border.
  * 'single': A single line box.
  * 'double': A double line box.
  * 'rounded': Like 'single' but with rounded corners ('╭' etc.).
  * 'shadow': A drop shadow effect blending with the background.

* ratio: The space related to the editor height the floating window will take. Must be between 0.5 and 1.
  * The default value is 0.8.
  * If the ratio informed is less than 0.5, the plugin will assume 0.5.
  * If the ratio informed exceeds 1, the plugin will divide the number and use it as a decimal. Example:

    ```lua
    { ratio = 7 }
    ```

    results in:

    ```lua
    { ratio = 0.7 }
    ```
</details>


## ☑️ Todo

To keep **floating-help** as simple as possible, I consider it done as it is. Although, I have some ideas that I may implement in the future.

<details><summary>Todo List</summary>

- [ ] Option to centralize the help window in the active pane instead of the editor
- [ ] Option to open the help window in a vertical split instead of a floating window

</details>


## 🚀 Contributions

Pull Requests are welcome. If you're addressing a problem with the plugin, consider opening an issue first.
