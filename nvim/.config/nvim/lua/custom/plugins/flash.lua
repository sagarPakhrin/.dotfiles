return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@diagnostic disable-next-line: undefined-doc-name
  ---@type Flash.Config
  opts = {
    modes = {
      search = {
        enabled = false,
      },
      char = {
        enabled = false,
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "\\\\", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    -- { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    { "\\\\w", mode = { "n" }, function(opts)
      local Flash = require("flash")

      ---@diagnostic disable-next-line: undefined-doc-name
      ---@param opts Flash.Format
      ---@diagnostic disable-next-line: redefined-local
      local function format(opts)
        -- always show first and second label
        return {
          { opts.match.label1, "FlashMatch" },
          { opts.match.label2, "FlashLabel" },
        }
      end

      Flash.jump({
        search = { mode = "search" },
        label = { after = false, before = { 0, 0 }, uppercase = false, format = format },
        pattern = [[\<]],
        action = function(match, state)
          state:hide()
          Flash.jump({
            search = { max_length = 0 },
            highlight = { matches = false },
            label = { format = format },
            matcher = function(win)
              -- limit matches to the current label
              return vim.tbl_filter(function(m)
                return m.label == match.label and m.win == win
              end, state.results)
            end,
            labeler = function(matches)
              for _, m in ipairs(matches) do
                m.label = m.label2 -- use the second label
              end
            end,
          })
        end,
        labeler = function(matches, state)
          local labels = state:labels()
          for m, match in ipairs(matches) do
            match.label1 = labels[math.floor((m - 1) / #labels) + 1]
            match.label2 = labels[(m - 1) % #labels + 1]
            match.label = match.label1
          end
        end,
      })
    end, desc = "Toggle Flash Search" },
  },
}
