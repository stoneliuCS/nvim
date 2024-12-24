return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      servers = {
        texlab = {
          settings = {
            texlab = {
              -- Enable formatting through the LSP
              formatterLineLength = 100, -- Adjust line length as needed
              latexFormatter = "latexindent",
            },
          },
        },
        nil_ls = { -- The Nix language server
          settings = {
            ["nil"] = {
              formatting = {
                command = { "nixfmt" },
              },
            },
          },
        },
        yamlls = {
          settings = {
            yaml = {
              format = {
                enable = true,
              },
            },
          },
        },
        tsserver = {
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
        },
      },
    },
  },
}
