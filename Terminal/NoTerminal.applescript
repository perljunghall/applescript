--- sometimes I don't want to open up the terminal just to run one command so i saved this script as an app 
--- uses the "do shell script" command

set termcommand to text returned of (display dialog "Enter a command to run:" default answer "" buttons {"Quit", "Run"} default button "Run")
if termcommand contains "" then
	error number -128
else if termcommand contains termcommand then
	try
		set resultdisp to do shell script termcommand
		display alert resultdisp
	on error err
		display alert "Your command failed to execute" message err
	end try
end if

--- unforswearing.com
--- http://www.github.com/unforswearing
--- hello@unforswearing.com
