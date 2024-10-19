return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
      org_todo_keywords = { 'TODO', 'WAITING', '|', 'DONE' },
      org_capture_templates = {
        t = {
          description = 'Thoughts',
          template = '%?',
          datetree = {
            treetype = 'month',
            reversed = true,
          },
          target = '~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/thoughts.org',
        },
      },
    }

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
