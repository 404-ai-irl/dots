# config.nu
# See `help config nu` for more options

### history ###
$env.config.history.file_format = "sqlite"
$env.config.history.max_size = 5_000_000
$env.config.history.sync_on_enter = true
$env.config.history.isolation = true

### terminal ###
$env.config.use_kitty_protocol = true

source $"($nu.home-path)/.cargo/env.nu"
