local metros = require(".metros.modules.metros-cmd.lua")

function termclear()
    term.clear()
    term.setCursorPos(1,1)
end

function buildmenu()
    termclear()
    print("1. Rest the boot files")
    print("2. Uninstall Metros")
    print("3. Help menu")
    print("4. Back")
end
function menu()
buildmenu()
option = io.read()
print(option)
if option=="1"
    then
    metros.startup_reset()
elseif option=="2"
    then
    metros.uninstall()
elseif option=="3"
    then
    metros.help()
elseif option=="4"
    then
    shell.run("o.lua")
end

sleep(3)
end
while true do
menu()
end
