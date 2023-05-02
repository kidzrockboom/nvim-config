local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
	'clangd',
	'marksman',
	'tsserver',
	'eslint',
	'lua_ls',
	'rust_analyzer',
	'pyright',
})


local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
	['<Down>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),

})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

-- Format files on save --
lsp.format_on_save({
	servers = {
		['lua_ls'] = { 'lua' },
		['rust_analyzer'] = { 'rust' },
		['pyright'] = { 'python' },
	}
})

-- Sign icons for warnings and hints --
lsp.set_sign_icons({
	error = '✘',
	warn = '▲',
	hint = '⚑',
	info = '»'
})

lsp.setup()
