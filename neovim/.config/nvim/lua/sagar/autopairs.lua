local status_ok, autopairs = pcall(require, "config.autopairs")
if not status_ok then
  return
end

autopairs.setup({
  check_ts = true,
})
