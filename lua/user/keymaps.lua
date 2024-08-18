-- NeoVim mappings

-- Navigate buffers
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"

-- Move text up and down
lvim.keys.normal_mode["<A-j>"] = "<Esc>:m .+1<CR>=="
lvim.keys.normal_mode["<A-k>"] = "<Esc>:m .-2<CR>=="
lvim.keys.normal_mode["<A-Down>"] = "<Esc>:m .+1<CR>=="
lvim.keys.normal_mode["<A-Up>"] = "<Esc>:m .-2<CR>=="
