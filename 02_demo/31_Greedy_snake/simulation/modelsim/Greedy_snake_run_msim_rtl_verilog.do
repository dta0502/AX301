transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/Snake_pll.v}
vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/greedy_snake.v}
vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/game_ctrl_module.v}
vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/apple_generate_module.v}
vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/snake_ctrl_module.v}
vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/vga_ctrl_module.v}
vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/key_check_module.v}
vlog -vlog01compat -work work +incdir+D:/quartus/quartus/HZP_my_projects/Greedy_snake {D:/quartus/quartus/HZP_my_projects/Greedy_snake/smg_display_module.v}

