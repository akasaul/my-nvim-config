vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "ji", "`", { desc = "Insert tilde on insert mode" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Fast saving
keymap.set("n", "<Leader>w", ":write!<CR>", { desc = "Fast save" }) -- increment
keymap.set("n", "<Leader>q", ":q!<CR>", { desc = "Fast exit" }) -- decrement
--
-- Remap for dealing with visual line wraps
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move to start/end of line
keymap.set("n", "H", "_")
keymap.set("n", "L", "$")

-- Navigate buffers
keymap.set("n", "<Right>", ":bnext<CR>", opts)
keymap.set("n", "<Left>", ":bprevious<CR>", opts)

-- search current buffer
keymap.set("n", "<C-s>", ":Telescope current_buffer_fuzzy_find<CR>", opts)

-- Panes resizing
keymap.set("n", "+", ":vertical resize +5<CR>")
keymap.set("n", "_", ":vertical resize -5<CR>")
keymap.set("n", "=", ":resize +5<CR>")
keymap.set("n", "-", ":resize -5<CR>")

-- write file in the current directory
keymap.set("n", "<C-n>", ":w %:h/", opts)

-- comment line
keymap.set("n", "<leader>/", "gcc", opts)

-- refactoring
keymap.set("x", "<leader>re", ":Refactor extract ")
keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")
keymap.set("x", "<leader>rv", ":Refactor extract_var ")
keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")
keymap.set("n", "<leader>rI", ":Refactor inline_func")
keymap.set("n", "<leader>rb", ":Refactor extract_block")
keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")

-- Split line with X
keymap.set("n", "X", ":keeppatterns substitute/\\s*\\%#\\s*/\\r/e <bar> normal! ==^<cr>", { silent = true })

-- window management
keymap.set("n", "sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "ss", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "so", "<cmd>only<CR>", { desc = "Close all windows except the current" }) -- close all windows except the current one

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

--basic
keymap.set("n", ";", ":", { desc = "Enter command mode" }) -- close current split window
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" }) -- select all
keymap.set("n", "<leader>s", [[:%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace" }) -- search and replace

-- keep cursor on vertical motion
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "keep cursor on vertical motion" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "keep cursor on vertical motion" })
keymap.set("n", "<C-f>", "<C-f>zz", { desc = "keep cursor on vertical motion" })
keymap.set("n", "<C-b>", "<C-b>zz", { desc = "keep cursor on vertical motion" })

-- Selection keymaps
keymap.set("n", "cic", "ci{", { desc = "Replace inside of curly brace" })
keymap.set("n", "dic", "di{", { desc = "Delete inside of curly brace" })
keymap.set("n", "vic", "vi{", { desc = "Select inside of curly brace" })
keymap.set("n", "yic", "yi{", { desc = "Yank inside of curly brace" })

keymap.set("n", "cac", "ca{", { desc = "Replace outside of curly brace" })
keymap.set("n", "dac", "da{", { desc = "Delete outside of curly brace" })
keymap.set("n", "vac", "va{", { desc = "Select outside of curly brace" })
keymap.set("n", "yac", "ya{", { desc = "Yank outside of curly brace" })

-- keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })
keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })

keymap.set("n", "<leader>ln", "<cmd> set rnu! <CR>", { desc = "Toggle relative number" }) -- toggle relative line number

-- clear highlights with escape
keymap.set("n", "<Esc>", "<cmd> noh <CR>", { desc = "Clear highlights" })

--oil floating window
keymap.set(
  "n",
  "<leader>oi",
  "<cmd>lua require('oil').open_float()<CR>",
  { desc = "Open oil vim floating window", noremap = true, silent = true }
)

-- navigate within insert mode
keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

-- escape insert mode (let's see if i like this one)
keymap.set("i", "jj", "<ESC>", { desc = "Esape insert mode" })

-- move lines in select mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down" })

--flutter
keymap.set("n", "<leader>fru", ":FlutterRun<CR>")
keymap.set("n", "<leader>fde", ":FlutterDevices<CR>")
keymap.set("n", "<leader>fe", ":FlutterEmulators<CR>")
keymap.set("n", "<leader>fre", ":FlutterReload<CR>")
keymap.set("n", "<leader>fhr", ":FlutterHotRestart<CR>")
keymap.set("n", "<leader>fD", ":FlutterVisualDebug<CR>")
keymap.set("n", "<leader>fq", ":FlutterQuit<CR>")
