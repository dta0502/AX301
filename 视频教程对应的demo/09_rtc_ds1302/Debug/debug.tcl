init_tk ;##在Tcl脚本中调用Tk语句之前，需要添加一条init_tk命令;不添加这条命令，Quartus II是不能识别Tk语句
;# Create a top level and add a title
toplevel .top
;#named the top window
wm title .top "Altera Visual Jtag Debug Station" ;# Add title to the application
wm geometry .top 600x400+100+50	              ;#// 定义根窗口的大小及位置

;#####################Menu设计菜单###################################################3

;#Declare that there is a menu
menu .top.mbar
.top config -menu .top.mbar

;#The Main Buttons
.top.mbar add cascade -label "File" -underline 0 \
      -menu [menu .top.mbar.file -tearoff 0]
.top.mbar add cascade -label "Help" -underline 0 \
      -menu [menu .top.mbar.help -tearoff 0]

;## File Menu ##
set m .top.mbar.file
$m add command -label "New" -underline 0 \
	  -command { .top.t delete 1.0 end } ;# A new item called New is added.
$m add checkbutton -label "Open" -underline 0 -command { menu_clicked 1 "Open" }
$m add command -label "Save" -underline 0 -command { menu_clicked 1 "Save" }
$m add separator
$m add command -label "Exit" -underline 1 -command exit

;## Help ##
set m .top.mbar.help
$m add command -label "About" -command { 
	tk_messageBox -type ok -title "About Reciprocal" -message "VJ Debug 1.0.0"
	}
  



;#######################################################

label .top.reg_addr_lab -text "reg addr:"
pack .top.reg_addr_lab
place .top.reg_addr_lab -x 100 -y 1

entry .top.reg_addr -width 5 -textvariable en_id  -borderwidth 3 -relief sunken
pack .top.reg_addr
place .top.reg_addr -x 170 -y 1

label .top.reg_data_lab -text "reg data:"
pack .top.reg_data_lab
place .top.reg_data_lab -x 220 -y 1

entry .top.reg_data -width 5 -textvariable en_user  -borderwidth 3 -relief sunken
pack .top.reg_data
place .top.reg_data -x 290 -y 1

button .top.reg_read -width 15 -text "Read REG" -command reg_read_cb  -relief raised
pack .top.reg_read
place .top.reg_read -x 330 -y 1

button .top.reg_write -width 15 -text "Write REG" -command reg_write_cb  -relief raised
pack .top.reg_write
place .top.reg_write -x 450 -y 1

;###放置Visual JTAG调试部件##################################################################################
frame .top.vjf
button .top.rst -width 15 -text "Reset" -command Reset -relief raised
button .top.fpga_version -width 15 -text "FPGA Version" -command fpga_version_cb  -relief raised
button .top.settime -width 15 -text "Set now time" -command set_time_cb -relief raised
button .top.gettime -width 15 -text "Get time" -command get_time_cb -relief raised
grid .top.rst -in .top.vjf -row 1 -column 1
grid .top.fpga_version -in .top.vjf -row 1 -column 2
grid .top.settime -in .top.vjf -row 1 -column 3
grid .top.gettime -in .top.vjf -row 1 -column 4
pack .top.vjf
place .top.vjf -x 10 -y 32

;########创建文本显示log##############################################
frame .top.textarea
#创建显示一个或多个文本行并允许编辑该文本
text .top.t -width 81 -height 14 -font {clean -14} -yscrollcommand ".top.sc_y set" -xscrollcommand ".top.sc_x set" -borderwidth 2 -relief ridge;

;#建立一个竖的滚动条贴在.t窗口右边
scrollbar .top.sc_y -orient v -command ".top.t yview" 
scrollbar .top.sc_x -orient h -command ".top.t xview"
;#将text和scrollbar这3个构件放置到同一个frame里
grid .top.t   -in .top.textarea -row 1 -column 1      
grid .top.sc_y -in .top.textarea -row 1 -column 2 -sticky ns
grid .top.sc_x -in .top.textarea -row 2 -column 1 -sticky ew

pack .top.textarea
place .top.textarea -x 5 -y 120
;##########################################################################################################
button .top.clr -command {clean} -text "Clear"
pack .top.clr
button .top.cancel -command {exit} -text "Quit"  -activebackground red
pack .top.cancel
button .top.savelog -command {saveLog} -text "Save Log"  -activebackground green
pack .top.cancel
place .top.clr -x 120 -y 350
place .top.cancel -x 420 -y 350
place .top.savelog -x 240 -y 350

label .top.statusbar -text "Ready" -justify left
place .top.statusbar -x 10 -y 380




proc send_ir { value } {
	device_lock -timeout 10000
	set res [ device_virtual_ir_shift -instance_index 0 -ir_value $value]
	device_unlock
	return $res
}

proc send_dr { value  value_len } {
	device_lock -timeout 10000
	set res [ device_virtual_dr_shift -instance_index 0 -length $value_len -dr_value $value -value_in_hex ]
	device_unlock
	return $res
  #return [ device_virtual_dr_shift -instance_index 0 -length $value_len -dr_value $value]
}

proc write_reg { write_addr write_data} {
	set len [string length $write_addr]
	if {$len > 4 || $len == 0} {
		puts "address is error.\n"
		return ""
	}
	set tmp 0x
	append tmp $write_addr
	set tmp [format "%04x" $tmp]
	send_ir 1
	send_dr $tmp 16
	
	set len [string length $write_data]
	if {$len > 2 || $len == 0 } {
		puts "data is error.\n"
		return ""
	}
	set tmp 0x
	append tmp $write_data
	set tmp [format "%02x" $tmp]
	send_ir 2
	return [send_dr $tmp 8]
}

proc read_reg { read_addr } {
	set len [string length $read_addr]
	if {$len > 4 || $len == 0} {
		puts "address is error.\n"
		return ""
	}
	set tmp 0x
	append tmp $read_addr
	set tmp [format "%04x" $tmp]
	puts $tmp
	send_ir 1
	send_dr $tmp 16
	send_ir 3
	return [send_dr 00 8]
}

;################Procedure(事件句柄)##############################################################################


;##################
;# RJ_Check proc  #
;##################
proc RJ_Check { } {
     .top.t delete 1.0 end

     .top.t insert end "Check the JTAG connection status.\n"
     foreach hardware_name [get_hardware_names] {
        .top.t insert end "$hardware_name \n"
        if { [string match "USB-Blaster*" $hardware_name] } {
             set usbblaster_name $hardware_name
             .top.t insert end "\nFound the cable connected, and there is a device on the JTAG as below:"
             set device_name [lindex [get_device_names -hardware_name $usbblaster_name] 0]
             .top.t insert end "\n$device_name\n"
             set test_device $device_name                          
             .top.t insert end "\nSelected this device: $test_device.\n"
             open_device -device_name $test_device -hardware_name $usbblaster_name
             .top.t insert end "\nOpen devcie successfully\n"
             device_lock -timeout 10000
             device_ir_shift -ir_value 6 -no_captured_ir_value
             .top.t insert end "\nIDCODE: 0x[device_dr_shift -length 32 -value_in_hex]"
             device_unlock
             device_lock -timeout 10000
             device_ir_shift -ir_value 7 -no_captured_ir_value
             .top.t insert end "\nUSERCODE: 0x[device_dr_shift -length 32 -value_in_hex]\n"
             device_unlock 
        } else {
             .top.t insert end "\nCan't find cables conneted\n"
               }
     }

}
RJ_Check

proc GetIdcode {} {
     device_lock -timeout 10000
     device_ir_shift -ir_value 6 -no_captured_ir_value
     set en_id 0x[device_dr_shift -length 32 -value_in_hex]
     .top.t insert end "\nIDCODE: $en_id\n"
     ;#.top.t insert end "\nIDCODE: 0x[device_dr_shift -length 32 -value_in_hex]"
     device_unlock
}

proc GetUsercode {} {
     device_lock -timeout 10000
     device_ir_shift -ir_value 7 -no_captured_ir_value
     set en_user 0x[device_dr_shift -length 32 -value_in_hex]
     .top.t insert end "\nIDCODE: $en_user\n"
     ;#.top.t insert end "\nIDCODE: 0x[device_dr_shift -length 32 -value_in_hex]"
     device_unlock
}

;#################
;# VJ_Debug proc #
;#################
proc reg_read_cb {} {
	set read_reg_addr [.top.reg_addr  get]
	set tmp [read_reg $read_reg_addr]
	.top.t insert end "Read register address is 0x$read_reg_addr,data is $tmp.\n"
}
proc reg_write_cb {} {
	set write_reg_addr [.top.reg_addr  get]
	set write_reg_data [.top.reg_data  get]
	write_reg $write_reg_addr $write_reg_data
	.top.t insert end "Write 0x$write_reg_data to register 0x$write_reg_addr.\n"
}
proc Reset {} {
    
}

proc fpga_version_cb {} {
	set fpga_ver ""
	append fpga_ver [read_reg 00]
	append fpga_ver [read_reg 01]
	set fpga_date ""
	append fpga_date [read_reg 02]
	append fpga_date [read_reg 03]
	append fpga_date [read_reg 04]
	append fpga_date [read_reg 05]
	set fpga_time ""
	append fpga_time [read_reg 06]
	append fpga_time [read_reg 07]
	append fpga_time [read_reg 08]
	append fpga_time [read_reg 09]	
    .top.t insert end "\nFPGA version is 0x$fpga_ver.\n"
	.top.t insert end "FPGA compile date is $fpga_date.\n"
	.top.t insert end "FPGA compile time is $fpga_time.\n"
}
proc set_time_cb {} {
	write_reg 0100 [clock format [clock seconds] -format {%S}]
	write_reg 0101 [clock format [clock seconds] -format {%M}]
	write_reg 0102 [clock format [clock seconds] -format {%I}]
	write_reg 0103 [clock format [clock seconds] -format {%d}]
	write_reg 0104 [clock format [clock seconds] -format {%m}]
	#write_reg 0105 [clock format [clock seconds] -format {%H}]
	write_reg 0106 [clock format [clock seconds] -format {%y}]
	write_reg 0200 00
	write_reg 0200 01
	.top.t insert end "Set time.\n"
}
proc get_time_cb {} {
	set ds1302_time  "20"
	append ds1302_time [read_reg 0106]
	append ds1302_time "-"
	append ds1302_time [read_reg 0104]
	append ds1302_time "-"
	append ds1302_time [read_reg 0103]
	append ds1302_time " "
	append ds1302_time [read_reg 0102]
	append ds1302_time ":"
	append ds1302_time [read_reg 0101]
	append ds1302_time ":"
	append ds1302_time [read_reg 0100]	
	.top.t insert end "ds1302 time is $ds1302_time.\n"
}
;##############################################################
proc closeDevice {} {
     close_device
     .top.t insert end "\nClose devcie successfully.\n";
}


proc menu_clicked { no opt } {
	tk_messageBox -message \
		"You have clicked $opt.\nThis function is not implanted yet."
}


proc clean { } {
     .top.t delete 1.0 end
     }

     
proc saveLog {} {
	set start_folder "e:/workspace/vj/mytest/temp"
	set types {
	{{Text Files} 		{.txt}	  }
	{{Log Files} {.log} 	  }
	{{Tcl/Tk Files} 	{.tcl}	  }
	{{All Files}        *         }	
	}
	set new_path [tk_getSaveFile -filetypes $types -initialdir $start_folder]
	if { $new_path != "" } {
		set contents [.top.t get 1.0 end]
		set out [open "$new_path" w]
		if { $out != 0 } {
			puts $out $contents
			flush $out
			stat "File saved to \"$new_path\""
		}
		close $out
	}
}
;#Show the specified text as the status for a second and then clear it
proc stat { msg } {
	.top.statusbar configure -text "$msg"
	after 2000 { .top.statusbar configure -text "Ready" }
}
#Update the status bar
proc status { msg } {
	if { $msg != "" } {
		.top.statusbar configure -text "$msg"
	} else {
		.top.statusbar configure -text "Ready"
	}
}

     
tkwait window .top     