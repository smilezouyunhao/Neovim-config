local status, alpha_nvim = pcall(require, "alpha")

if not status then
  print("alpha-nvim is not installed")
  return
end

local startify = require'alpha.themes.startify'

alpha_nvim.setup(
  startify.config
 -- startify.section.header.val == {
 --  [[ =================     ===============     ===============   ========  ========]],
 --  [[ \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
 --  [[ ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
 --  [[ || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
 --  [[ ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
 --  [[ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
 --  [[ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
 --  [[ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
 --  [[ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
 --  [[ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
 --  [[ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
 --  [[ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
 --  [[ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
 --  [[ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
 --  [[ ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
 --  [[ ||.=='    _-'                                                     `' |  /==.||]],
 --  [[ =='    _-'                        N E O V I M                         \/   `==]],
 --  [[ \   _-'                                                                `-_   /]],
 --  [[  `''                                                                      ``' ]],
 -- }
)
