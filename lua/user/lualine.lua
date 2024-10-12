require('lualine').setup{
    options = {
        theme = "auto",
        component_separators = '',
        section_separators = { left = '', right = '' },
        component_separators = { left = '/', right = '/' },
    }, 
    sections = {
        lualine_a = { "mode" }, 
        lualine_b = { "branch" }, 
        lualine_c = { "diff", "diagnostics" }
    },  
} 
