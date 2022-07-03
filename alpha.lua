local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  
[[                               __               ]],
[[███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗]],
[[████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║]],
[[██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║]],
[[██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║]],
[[██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║]],
[[╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "Find file", ":Telescope find_files <CR>"),
	dashboard.button("g", "Find text", ":Telescope live_grep <CR>"),
	dashboard.button("q", "Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "matoch.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
