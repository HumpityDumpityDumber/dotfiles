import "matugen" as matugen;

const colors = matugen::matugen;

export let eggs = #{

    matugen: "~/.config/matugen",
    
    starship: #{
        targets: #{
        "starship.toml": "~/.config/starship.toml"    
        }
    },
    
    niri: #{
        targets: "~/.config/niri",
        templates: ["config.kdl"],
    },
    
    nushell: #{
        targets: #{
            "config.nu": "~/.config/nushell/config.nu"   
        }
    },
    
    kitty: #{
        targets: "~/.config/kitty",
        templates: ["colors.conf"],
    },
    
    waybar: #{
        targets: "~/.config/waybar",
        templates: ["colors.css"],
    },
    
    helix: #{
        targets: "~/.config/helix"
    },

    scripts: #{
        targets: "~/.scripts"   
    },

    zellij: #{
        targets: "~/.config/zellij"
    },

    equibop: #{
        targets: "~/.config/equibop",
        strategy: "merge"
    },

    gtk: #{
        targets: #{
            ".themes/": "~/.themes/"
        },
    },

    }
