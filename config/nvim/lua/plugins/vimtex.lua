return {
  "lervag/vimtex",
  ft = "tex",
  config = function()
    -- Generische Compiler-Einstellung für VimTeX
    vim.g.vimtex_compiler_method = "generic"

    -- Root-File ermitteln (per b:vimtex_main)
    vim.g.vimtex_compiler_generic = {
      command = "fish -c compile_latex",
      callback = 1,
      continuous = 0,
    }
  end,
}
