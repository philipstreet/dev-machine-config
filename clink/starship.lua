-- starship.lua
os.setenv('STARSHIP_CONFIG', 'C:\\Users\\?\\.config\\starship\\starship.toml')
load(io.popen('starship init cmd'):read("*a"))()