# Pan/Tilt Inverter for grandMA3
This plugin provides a simple way to **invert** (and undo the invertion state) **Pan/Tilt** of the **current selection of fixtures**.

## Why you may need this
In **grandMA2** there was a simple way to invert the Pan/Tilt attribute for all fixtures of the current selection. In **grandMA3** (at least until the current version 1.8) there's **no such way**. You'll need to check/uncheck the invertion inside the patch or by every single fixture per single (if it's a splitted range of fixtures).

If you used this feature in grandMA2 to speedup your setup time, you may wish back this feature for grandMA3. Exactly here this plugin could help you.

The plugin **only changes** the **DMXInvert** settings of Pan/Tilt, **not** the **EncoderInvert** settings!

## How does it work
In general its **recommended** to use the **panEnabled/Disbled** (or tiltEnabled/disabled) **functions**. These **functions provide** a **simple interface** to **trigger** the **needed routines without** the need of **dealing with function arguments**, handling of wrong inputs, ...

### 1. Functioncall from another plugin
Simply **trigger** the **needed function from** the **sourcecode** of **another plugin**.

```lua
function myFunction()
    DMXInvert.panEnabled()
end
```

### 2. Functioncall from commandline (recommended for quick access)
**Trigger** the **needed function** with the **Lua keyword** from a **macroline**. Predefined macros can be imported with the **PanTilt_Invert_Macros.xml** file.

```
Lua "DMXInvert.panEnabled()"
```
In **both cases** the **"PanTilt_Invert.lua" plugin** needs to be **imported** in the **grandMA3 showfile** before the functions are accessible.

## Import the plugin
To **import** the **plugin** either the **local** or an **external disk** (recommended) could be used.
In case of using the local disk on an onPC configuration, keep in mind that the file explorer may hides MA Lightings folders!

To import the plugin the **"PanTilt_Invert.xml" file** needs to be **copied** at a **certain location**:

### Import from local disk
To **import** the **plugin** from the **local disk** the **plugin file** needs to be **copied at following location**:

**onPC configurations:**
- **Windows:** `C:/ProgramData/MALightingTechnology/gma3_library/datapools/plugins/`
- **Mac:** `HD/users/[username]/MALightingTechnology/gma3_library/datapools/plugins/`

**SFTP connection on actual console**:
- **SFTP:** `gma3_library/datapools/plugins/`

### Import from external disk (recommended)
To **import** the **plugin** from an **external disk** the **plugin file** needs to be **copied at following location** on the external disk:
- **External disk:** `[diskname]/grandMA3/gma3_library/datapools/plugins/`

### Import plugin into the showfile
Now the plugin can be imported via the **commandline**, the **import menu** of a **plugin pool item** ("recommended") or the **import menu** in the **setup**. 


[![Import PanTilt_Invert](https://i.imgur.com/7Nd0Srk.png)](https://i.imgur.com/7Nd0Srk.png)

## Syntax

To **call** the **functions via commandline** (e.g. in a macro that's assigned to a x-key) the **following commands** could be used:

| Function | Command |
| ------- | --------- |
| Invert Pan | ```Lua("DMXInvert.panEnabled()")``` |
| normal Pan | ```Lua("DMXInvert.panDisabled()")``` |
| Invert Tilt | ```Lua("DMXInvert.tiltEnabled()")``` |
| normal Tilt | ```Lua("DMXInvert.tiltDisabled()")``` |

## Versions
| Version | Changelog |
| ------- | --------- |
| V1.0| initial version of plugin |
| V1.1| private attributes added |

## Known limitations
- only inverts actual selected fixtures. Doesn't invert fixtures down the hierarchy (e.g. if a grouping fixture is selected, only the grouping fixtures gets invorted, not it's children).

## Disclaimer
The plugin is made by a private programmer who isn't working for MA Lighting. It's made based on the knowledge of the programmer, not the knowledge of a developer of the grandMA3 system. System failure caused by using this plugin is completely the risk of the user. Never use this plugin in a critical situation! Only use this plugin in show situations after checking that it won't break the system! 