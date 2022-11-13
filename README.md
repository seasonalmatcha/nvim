## Directory stucture

```
├─ init.lua -- main config file that will be called by neovim
├─ after
│  ├─ plugin -- place to store plugin config and will be autoloaded
│  │  ├─ [...].lua
├─ lua
│  ├─ [...].lua -- custom config to add in init.lua. Need to be imported from main init.lua file
```
