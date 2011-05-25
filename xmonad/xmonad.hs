import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad

main = do
    xmproc <- spawnPipe "/usr/local/bin/xmobar /home/gjones/.xmobarrc"
    xmonad $ defaultConfig
        { modMask         = mod4Mask
        , borderWidth     = 1
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        }

