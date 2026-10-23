---@type vim.lsp.Config
return {
  settings = {
    ["nil"] = {
      nix = {
        flake = {
          -- true: fetch missing flake inputs automatically
          -- false: never fetch, only use inputs already on disk
          autoArchive = true,
        },
      },
    },
  },
}
