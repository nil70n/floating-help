# <i class="fa-regular fa-circle-question"></i> floating-help

`floating-help` opens the help buffer in a floating window.


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


## <i class="fa-solid fa-gear"></i> Configuration

**floating-help** is a very simple plugin and does not have much options to configure. The available options are listed below.

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
  * 'rounded': Like 'single', but with rounded corners ('╭' etc.).
  * 'shadow': A drop shadow effect by blending with the background.

* ratio: The space related to the editor hight that will be taken by the floating window. Must be between 0.5 and 1.
  * The default value is 0.8.
  * If the ratio informed is less than 0.5 the plugin will assume 0.5.
  * If the ratio informed is greater than 1, the plugin will divide the number and get use it as a decimal. Example:

    ```lua
    { ratio = 7 }
    ```

    results in:

    ```lua
    { ratio = 0.7 }
    ```

</details>


## <i class="fa-regular fa-square-check"></i> Todo

As **floating-help** aims to address a very simple problem, I consider it done as it is. Although, I have some ideas that I may implement in the future.

<details><summary>Todo List</summary>

- [ ] Option to centralize the help window in the active window instead of in the editor
- [ ] Option to opeh the help window in a vertical split instead of floating window

</details>


## <i class="fa-solid fa-code-pull-request"></i> Contributions

Pull Requests are welcome. If you're addressing a problem with the plugin, consider open an issue before thea Pull Request.
