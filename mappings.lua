-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- Split windows 
    ["s<right>"] = { "<cmd>vsplit<cr>", desc = "Horizontal Split" },
    ["s<left>"] = { "<cmd>vsplit<cr>", desc = "Horizontal Split" },
    ["s<up>"] = { "<cmd>split<cr>", desc = "Vertical Split" },
    ["s<down>"] = { "<cmd>split<cr>", desc = "Vertical Split" },
    -- Jump between windows
    ["<leader><right>"] = { "<c-w>l", desc = "Go Right Window" },
    ["<leader><left>"] = { "<c-w>h", desc = "Go Left Window" },
    ["<leader><up>"] = { "<c-w>k", desc = "Go Up Window" },
    ["<leader><down>"] = { "<c-w>j", desc = "Go Down Window" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
