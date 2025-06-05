-- Old path -> new path map
--
-- Allows scripts to be renamed or moved without breaking compatibility.
--
-- Table keys:
--                 `to` - Defines the script's new path

-- `if_not_overwritten` - Does not remap if a copy of the original still exists
--                        used to account for cases like `scopeRadii` where
--                        the script is designed to be overridden by mods

local remap = {
   -- Core
   class_registrator_modded_exes = {
      to = "amx/registrator",
   },

   -- Documentation
   lua_help_ex = {
      to = "doc/lua_help_ex"
   },
   ltx_help_ex = {
      to = "doc/ltx_help_ex"
   },

   -- DXML
   dxml_core = {
      to = "dxml/core",
   },
   slaxml = {
      to = "dxml/slaxml"
   },
   --[[
   modxml_inject_keybinds = {
      to = "dxml/inject_keybinds",
   },
   modxml_test = {
      to = "dxml/test",
   },
   --]]

   -- Options
   ui_options_modded_exes = {
      to = "options"
   },
   options_builder = {
      to = "options/builder"
   },
   options_modded_exes = {
      to = "options/modded_exes"
   },
   options_modded_exes_visual = {
      to = "options/modded_exes/visual"
   },
   options_modded_exes_3d_scopes = {
      to = "options/modded_exes/visual/3d_scopes"
   },
   options_modded_exes_crosshair = {
      to = "options/modded_exes/visual/crosshair"
   },
   options_modded_exes_hdr10 = {
      to = "options/modded_exes/visual/hdr10"
   },
   options_modded_exes_particles = {
      to = "options/modded_exes/visual/particles"
   },
   options_modded_exes_ui_hud = {
      to = "options/modded_exes/visual/ui_hud"
   },
   options_modded_exes_wallmarks = {
      to = "options/modded_exes/visual/wallmarks"
   },
   options_modded_exes_sound = {
      to = "options/modded_exes/sound"
   },
   options_modded_exes_doppler = {
      to = "options/modded_exes/sound/doppler"
   },
   options_modded_exes_control = {
      to = "options/modded_exes/control"
   },
   options_modded_exes_keyboard = {
      to = "options/modded_exes/control/keyboard"
   },
   options_modded_exes_mouse = {
      to = "options/modded_exes/control/mouse"
   },
   options_modded_exes_camera = {
      to = "options/modded_exes/control/camera"
   },
   options_modded_exes_pda = {
      to = "options/modded_exes/control/pda"
   },
   options_modded_exes_gameplay = {
      to = "options/modded_exes/gameplay"
   },
   options_modded_exes_3d_ballistics = {
      to = "options/modded_exes/gameplay/3d_ballistics"
   },
   options_modded_exes_aim = {
      to = "options/modded_exes/gameplay/aim"
   },
   options_modded_exes_first_person_death = {
      to = "options/modded_exes/gameplay/first_person_death"
   },
   options_modded_exes_monsters = {
      to = "options/modded_exes/gameplay/monsters"
   },
   options_modded_exes_saves = {
      to = "options/modded_exes/saves"
   },
   options_modded_exes_crash_saves = {
      to = "options/modded_exes/saves/crash_saves"
   },
   options_modded_exes_debug = {
      to = "options/modded_exes/debug"
   },
   options_modded_exes_logging = {
      to = "options/modded_exes/debug/logging"
   },
   options_modded_exes_metrics = {
      to = "options/modded_exes/debug/metrics"
   },

   -- Patches
   --[[
   callbacks_gameobject = {
      to = "patches/boot/_g/callbacks_gameobject",
   },
   axr_beh_patches = {
      to = "patches/axr_beh/ghentuong",
   },
   --]]

   -- Mods
   --[[
   fakelens = {
      to = "mods/2d_scopes/fakelens",
   },
   scopeRadii = {
      to = "mods/2d_scopes/scope_radii",
      if_not_overwritten = true
   },
   true_first_person_death = {
      to = "mods/first_person_death"
   },
   --]]
}

return {
   remap = remap
}
