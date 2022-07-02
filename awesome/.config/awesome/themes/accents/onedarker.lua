---------------------------
-- Default awesome theme --
---------------------------

-- requirements
-- ~~~~~~~~~~~~
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
-- local rnotification = require("ruled.notification")
local dpi = xresources.apply_dpi

-- Theme Dir :	
local gfs = require("gears.filesystem")
local themes_path = os.getenv("HOME") .. "/.config/awesome/themes/accents/"

-- Titlebar Dir :
local titlebar_theme = "simple"
local titlebar_icon_path = os.getenv("HOME") .. "/.config/awesome/themes/icons/titlebar/" .. titlebar_theme .. "/"
local tip = titlebar_icon_path

-- Layout Dir :
local layout_icon_path = os.getenv("HOME") .. "/.config/awesome/themes/icons/layouts/"
local lip = layout_icon_path

-- Colors :
colors = {}
-- Dark colors
colors.black 									= "#1f2227"
colors.red 										= "#bf616a"
colors.green 									= "#A3BE8C"
colors.yellow 									= "#D7BA7D"
colors.blue 									= "#5e81ac"
colors.magenta 									= "#B48EAD"
colors.cyan 									= "#88c0d0"
colors.white 									= "#abb2bf"
-- Bright colors
colors.brightblack 								= "#4C566A"
colors.brightred 								= "#bf616a"
colors.brightgreen 								= "#A3BE8C"
colors.brightyellow 							= "#D7BA7D"
colors.brightblue 								= "#5e81ac"
colors.brightmagenta 							= "#B48EAD"
colors.brightcyan 								= "#88c0d0"
colors.brightwhite 								= "#abb2bf"
-- Transparent
colors.transparent 								= "#00000000"

theme = {}


-- Default font :
theme.font 										= "JetBrains Mono Bold 10"
theme.taglist_font 								= "Font Awesome 6 Free Solid 11"
theme.iconfont 									= "JetBrainsMono Nerd Font Bold 10"


theme.bg_normal 								= colors.brightblack
theme.bg_focus  								= colors.brightblack
theme.bg_urgent     							= colors.black
theme.bg_minimize   							= colors.black
theme.bg_systray    							= colors.black

-- Taglist :
theme.taglist_spacing 							= dpi(2)
theme.taglist_bg_focus                          = colors.black
theme.taglist_fg_focus                          = colors.blue
theme.taglist_fg_empty                          = colors.brightblack
theme.taglist_bg_empty                          = colors.black
theme.taglist_fg_urgent							= colors.green

theme.fg_normal     							= colors.white
theme.fg_focus      							= colors.blue
theme.fg_urgent     							= colors.brightred
theme.fg_minimize   							= colors.brightblack

-- Clients :
theme.useless_gap   							= dpi(8)
theme.gap_single_client 						= true 
theme.border_width  							= dpi(2)
theme.border_normal                             = colors.brightblack
theme.border_focus                              = colors.blue
theme.border_marked                             = colors.blue

-- Tasklist :
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon 					= true
theme.tasklist_bg_normal 						= colors.black
theme.tasklist_bg_focus 						= colors.black
theme.tasklist_bg_urgent 						= colors.green


-- Notifications:
theme.notification_position 					= "bottom_right"
theme.notification_bg 							= colors.black
theme.notification_margin 						= dpi(5)
theme.notification_border_width 				= dpi(0)
theme.notification_border_color	 				= colors.blue
theme.notification_spacing = dpi(5)
theme.notification_icon_resize_strategy 		= "center"
theme.notification_icon_size 					= dpi(32)

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon 						= themes_path.."icons/others/forward.png"
theme.menu_bg_normal							= colors.black
theme.menu_bg_focus								= colors.black
theme.menu_border_color 						= colors.blue
theme.menu_border_width 						= dpi(2)
theme.menu_height 								= dpi(20)
theme.menu_width  								= dpi(170)


-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.fg_focus, theme.bg_focus
)

-- Icons :
theme.icon_theme                				= "/usr/share/icons/Papirus-Dark/16x16/apps"

-- Titlebar :
theme.titlebar_size 							= dpi(20)
theme.titlebar_position 						= "top"
theme.titlebar_bg_focus                         = colors.black
theme.titlebar_bg_normal                        = colors.black
theme.titlebar_fg_focus                         = colors.blue

-- Close Button :
theme.titlebar_close_button_normal 						= tip.."close_normal.svg"
theme.titlebar_close_button_focus  						= tip.."close_focus.svg"

-- Minimize Button :
theme.titlebar_minimize_button_normal 					= tip.."minimize_normal.svg"
theme.titlebar_minimize_button_focus  					= tip.."minimize_focus.svg"

-- Ontop Button :
theme.titlebar_ontop_button_normal_inactive 			= tip.."ontop_normal_inactive.svg"
theme.titlebar_ontop_button_focus_inactive  			= tip.."ontop_focus_inactive.svg"
theme.titlebar_ontop_button_normal_active 				= tip.."ontop_normal_active.svg"
theme.titlebar_ontop_button_focus_active  				= tip.."ontop_focus_active.svg"

-- Sticky Button :
theme.titlebar_sticky_button_normal_inactive 			= tip.."sticky_normal_inactive.svg"
theme.titlebar_sticky_button_focus_inactive  			= tip.."sticky_focus_inactive.svg"
theme.titlebar_sticky_button_normal_active 				= tip.."sticky_normal_active.svg"
theme.titlebar_sticky_button_focus_active  				= tip.."sticky_focus_active.svg"

-- Floating Button :
theme.titlebar_floating_button_normal_inactive 			= tip.."floating_normal_inactive.svg"
theme.titlebar_floating_button_focus_inactive  			= tip.."floating_focus_inactive.svg"
theme.titlebar_floating_button_normal_active 			= tip.."floating_normal_active.svg"
theme.titlebar_floating_button_focus_active  			= tip.."titlebar/stoplight/floating_focus_active.svg"

-- Maximized Button :
theme.titlebar_maximized_button_normal_inactive 		= tip.."maximized_normal_inactive.svg"
theme.titlebar_maximized_button_focus_inactive  		= tip.."maximized_focus_inactive.svg"
theme.titlebar_maximized_button_normal_active 			= tip.."maximized_normal_active.svg"
theme.titlebar_maximized_button_focus_active  			= tip.."maximized_focus_active.svg"

-- Hovered Close Button
theme.titlebar_close_button_normal_hover 				= tip.. "close_normal_hover.svg"
theme.titlebar_close_button_focus_hover  				= tip.. "close_focus_hover.svg"

-- Hovered Minimize Buttin
theme.titlebar_minimize_button_normal_hover 			= tip.. "minimize_normal_hover.svg"
theme.titlebar_minimize_button_focus_hover  			= tip.. "minimize_focus_hover.svg"

-- Hovered Ontop Button
theme.titlebar_ontop_button_normal_inactive_hover 		= tip.. "ontop_normal_inactive_hover.svg"
theme.titlebar_ontop_button_focus_inactive_hover  		= tip.. "ontop_focus_inactive_hover.svg"
theme.titlebar_ontop_button_normal_active_hover 		= tip.. "ontop_normal_active_hover.svg"
theme.titlebar_ontop_button_focus_active_hover  		= tip.. "ontop_focus_active_hover.svg"

-- Hovered Sticky Button
theme.titlebar_sticky_button_normal_inactive_hover 		= tip.. "sticky_normal_inactive_hover.svg"
theme.titlebar_sticky_button_focus_inactive_hover  		= tip.. "sticky_focus_inactive_hover.svg"
theme.titlebar_sticky_button_normal_active_hover 		= tip.. "sticky_normal_active_hover.svg"
theme.titlebar_sticky_button_focus_active_hover  		= tip.. "sticky_focus_active_hover.svg"

-- Hovered Floating Button
theme.titlebar_floating_button_normal_inactive_hover 	= tip.. "floating_normal_inactive_hover.svg"
theme.titlebar_floating_button_focus_inactive_hover  	= tip.. "floating_focus_inactive_hover.svg"
theme.titlebar_floating_button_normal_active_hover 		= tip.. "floating_normal_active_hover.svg"
theme.titlebar_floating_button_focus_active_hover  		= tip.. "floating_focus_active_hover.svg"

-- Hovered Maximized Button
theme.titlebar_maximized_button_normal_inactive_hover 	= tip.. "maximized_normal_inactive_hover.svg"
theme.titlebar_maximized_button_focus_inactive_hover  	= tip.. "maximized_focus_inactive_hover.svg"
theme.titlebar_maximized_button_normal_active_hover 	= tip.. "maximized_normal_active_hover.svg"
theme.titlebar_maximized_button_focus_active_hover  	= tip.. "maximized_focus_active_hover.svg"

-- Wallpaper :
--theme.wallpaper 								= themes_path.."background.png"

-- Layoutbox icons :
theme.layout_fairh 								= lip.. "fairh.png"
theme.layout_fairv 								= lip.. "fairv.png"
theme.layout_floating  							= lip.. "floating.png"
theme.layout_magnifier 							= lip.. "magnifier.png"
theme.layout_max 								= lip.. "max.png"
theme.layout_fullscreen 						= lip.. "fullscreen.png"
theme.layout_tilebottom 						= lip.. "tilebottom.png"
theme.layout_tileleft   						= lip.. "tileleft.png"
theme.layout_tile 								= lip.. "tile.png"
theme.layout_tiletop 							= lip.. "tiletop.png"
theme.layout_spiral  							= lip.. "spiral.png"
theme.layout_dwindle 							= lip.. "dwindle.png"
theme.layout_cornernw 							= lip.. "cornernww.png"
theme.layout_cornerne 							= lip.. "cornerne.png"
theme.layout_cornersw 							= lip.. "cornersw.png"
theme.layout_cornerse 							= lip.. "cornerse.png"

-- -- Urgent notifications :
-- rnotification.connect_signal("request::rules", function()
--     rnotification.append_rule {
--         rule       = { urgency = "critical" },
--         properties = { bg = colors.black, fg = colors.blue }
--     }
-- end)


return theme
