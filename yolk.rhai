import "matugen" as matugen;

const themes = #{
    gruvbox: #{
        background: "#282828",
        foreground: "#ebdbb2",
    },

    matugen: matugen::matugen
};

export const colors = if io::command_available("matugen") { themes.matugen } else { themes.gruvbox };

export let eggs = #{

    starship: #{
        targets: #{
        "starship.toml": "~/.config/starship.toml"    
        }
    },
    
    niri: #{
        targets: "~/.config/niri",
    },
    
    nushell: #{
        targets: #{
            "config.nu": "~/.config/nushell/config.nu"   
        }
    },
    
    kitty: #{
        targets: "~/.config/kitty"
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

    swayidle: #{
        targets: "~/.config/swayidle"
    },

    zellij: #{
        targets: "~/.config/zellij"
    },

    fuzzel: #{
        targets: "~/.config/fuzzel"
    },

    equibop: #{
        targets: "~/.config/equibop",
        strategy: "merge"
    },

    matugen: "~/.config/matugen"
}
