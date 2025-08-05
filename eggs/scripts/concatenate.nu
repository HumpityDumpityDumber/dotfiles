#!/usr/bin/env nu

job spawn {
  watch ~/.config/niri/modular {
    open ~/.config/niri/modular/* | str join "\n" | save --raw --force ~/.config/niri/config.kdl
  }
}

job spawn {
  watch ~/.cache/cwal/niri-layout.kdl {
    open ~/.config/niri/modular/* | str join "\n" | save --raw --force ~/.config/niri/config.kdl
  }
}

while (job list | length) > 0 {
  job list
} 
