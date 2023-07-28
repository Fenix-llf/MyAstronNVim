-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = true, -- setsrue vim.opt.wrap
    swapfile = false,
    tabstop = 4, --Tab宽度
    shiftwidth = 4, --每次Shift调整的缩进
    tabstop = 4,
    cursorline = true, --高亮当前行
    cursorcolumn = true, --高亮当前列
	  undofile = true, --撤销永久化
	  fileencodings = 'utf-8,ucs-bom,gb18030,gbk,gb2312,cp936',
	  termencoding = 'utf-8',
	  encoding = 'utf-8',
	  whichwrap = 'h,l,b,s,<,>,[,]', -- 换行按键
	  background = 'dark', --背景黑色
    termguicolors = true, --如果安装第三方主题，必须设置为true
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = false, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = false, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
