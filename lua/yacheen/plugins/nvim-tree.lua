return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
	"nvim-tree/nvim-web-devicons"
    },
    config = function()
	local nvimtree = require("nvim-tree")

	vim.g.loaded = 1
	vim.g.loaded_netrwPlugin = 1

	vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])
    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

	nvimtree.setup({
      view = {
                adaptive_size = true
            },
	  renderer = {
	    icons = {
	      glyphs = {
		folder = {
		  arrow_closed = "", -- arrow when folder is closed
		  arrow_open = "", -- arrow when folder is open
		},
	      },
	    },
	  },
	  actions = {
	    open_file = {
	      window_picker = {
            enable = false,
	      }
	    }
	  },
      git = {
          ignore = false,
      },
	})

	-- set keymaps
	local keymap = vim.keymap -- for conciseness

	keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

    end	
}
