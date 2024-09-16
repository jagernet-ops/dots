vim.g.mapleader = " ";
vim.keymap.set("n", "t", "<Nop>")
vim.keymap.set("n", "<leader>dd", vim.cmd.Ex);
vim.keymap.set("n", "<leader>fw", "<Cmd>Telescope live_grep<CR>");
vim.keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>");
vim.keymap.set("n", "<leader>b", "<Cmd>GitBlameToggle<CR>");
vim.keymap.set("n", "<leader>bx", "<Cmd>GitBlameOpenCommitURL<CR>");
vim.keymap.set("n", "<leader>ce", "<Cmd>Copilot enable<CR>");
vim.keymap.set("n", "<leader>cd", "<Cmd>Copilot disable<CR>");
vim.keymap.set("t", "<leader><ESC>", "<C-\\><C-n>");
vim.keymap.set("n", "<leader>n", "<Cmd>lua vim.diagnostic.goto_next()<CR>");
vim.keymap.set("n", "<leader>N", "<Cmd>lua vim.diagnostic.goto_prev()<CR>");
vim.keymap.set("n", "<C-t>t", "<Cmd>tabnew<CR>")
vim.keymap.set("n", "<C-t>n", "<Cmd>tabnext<CR>")
vim.keymap.set("n", "<C-t>b", "<Cmd>-tabnext<CR>")
vim.keymap.set("n", "<C-t>q", "<Cmd>tabclose<CR>")
