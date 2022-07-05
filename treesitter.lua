local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter.configs').setup {
    ensure_installed={'c','lua','rust','java','bash','cmake','css','dockerfile','go','html','javascript','json','make','markdown', 'perl','php','python','regex','ruby','toml','vim','yaml'},
    highlight = {
	    enable = true
    }
}
