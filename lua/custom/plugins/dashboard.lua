return {
  {
    'nvimdev/dashboard-nvim',
    enabled = false,
    lazy = false,
    event = 'VimEnter',
    opts = function()
      local logo = [[
       _   _           _     
      | | | | ___  ___| |__  
      | |_| |/ _ \/ __| '_ \ 
      |  _  | (_) \__ \ | | |
      |_| |_|\___/|___/_| |_|
      ]]
      return {
        theme = 'doom',
        config = {
          header = vim.split(logo, '\n'),
          center = {
            { icon = '  ', desc = 'Nieuw bestand', action = 'ene | startinsert', key = 'n' },
            { icon = '  ', desc = 'Bestand zoeken', action = 'Telescope find_files', key = 'f' },
            { icon = '  ', desc = 'Recente bestanden', action = 'Telescope oldfiles', key = 'r' },
            { icon = '  ', desc = 'Tekst zoeken', action = 'Telescope live_grep', key = 'g' },
            { icon = '  ', desc = 'Configuratie', action = 'edit $MYVIMRC', key = 'c' },
            { icon = '  ', desc = 'Afsluiten', action = 'qa', key = 'q' },
          },
        },
      }
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
}
