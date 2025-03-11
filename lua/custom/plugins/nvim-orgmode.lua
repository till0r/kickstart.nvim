return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/*.org',
      org_default_notes_file = '~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/inbox.org',
      org_todo_keywords = { 'TODO', 'WAITING', '|', 'DONE' },
      org_capture_templates = {
        t = {
          description = 'Thoughts',
          template = '%?',
          datetree = {
            tree_type = 'day',
            reversed = true,
          },
          target = '~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/thoughts.org',
        },
        w = {
          description = 'Weekend',
          template = '* TODO %?\n\n',
          target = '~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/weekend.org',
        },
      },
      ui = {
        folds = {
          colored = true,
        },
      },
    }
  end,
}
