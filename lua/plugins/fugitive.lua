return {
	"tpope/vim-fugitive",
	cmd = {"G", "Git"},
	keys = {
		{"<Leader>ga", ":Git fetch --all -p<cr>", desc = "Git fetch"},
		{"<Leader>gl", ":Git pull<cr>", desc = "Git pull"},
	}
}
