# Load all files from ~/.config/fish/configs
if test -d ~/.config/fish/configs
    for file in ~/.config/fish/configs/*.fish
        source $file
    end
end
