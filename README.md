# Script to  rotate-screen using  keystroke in Wayland Plasma

Scripts for handling display rotation 

## Files

- `rotate-screen.sh` — applies rotation via kscreen-doctor based on input
- `rotate-trigger.sh` — hooks into an event  to call rotate-screen.sh



## Usage

Use  to rotate screen $90^0$ clockwise 

```bash
./rotate-screen.sh 
```

## Setup

1. Add both of the script to ~/.local/bin

2. Make them both executable :

```bash
chmod +x rotate-screen.sh
chmod +x rotate-trigger.sh
```





3. Got to keyboard -> shortcut -> *Add New* -> Add `rotate-trigger.sh` from ~/.local/bin/rotate-trigger.sh -> Add any keybind you like

4. Press the keybind to use it & Enjoy 



 
=======
# rotate-screen
Script to  rotate-screen using  keystroke in Wayland Plasma  
