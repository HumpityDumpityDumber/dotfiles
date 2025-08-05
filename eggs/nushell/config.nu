# Disable the Nushell banner
$env.config.show_banner = false
$env.config.buffer_editor = "helix"

# enable fish completer
let fish_completer = {|spans|
    fish --command $"complete '--do-complete=($spans | str replace --all "'" "\\'" | str join ' ')'"
    | from tsv --flexible --noheaders --no-infer
    | rename value description
    | update value {|row|
      let value = $row.value
      let need_quote = ['\' ',' '[' ']' '(' ')' ' ' '\t' "'" '"' "`"] | any {$in in $value}
      if ($need_quote and ($value | path exists)) {
        let expanded_path = if ($value starts-with ~) {$value | path expand --no-symlink} else {$value}
        $'"($expanded_path | str replace --all "\"" "\\\"")"'
      } else {$value}
    }
}

$env.config.completions.external = { enable: true, completer: $fish_completer };

# starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# aliases and custom commands
alias hx = helix

alias shutdown = shutdown now

alias logout = niri msg action quit --skip-confirmation

alias docker = podman

def --env cdhx [path] {
    cd ($path | path dirname)
    hx ($path | path basename)
}

alias nso = exec "/home/knee/Desktop/Nintendo Switch Online-1.6.1.AppImage"

# env
$env.TERM = 'linux'
$env.path ++= ["~/.local/bin", "~/.scripts"]
