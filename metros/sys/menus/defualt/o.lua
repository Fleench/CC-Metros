function termclear()
    term.clear()
    term.setCursorPos(1,1)
end

function buildmenu()
    termclear()
    print("1. Shell")
    print("2. Help")
    print("3. Shudown")
    print("4. Restart")
end
function menu()
buildmenu()
option = io.read()
print(option)
if option=="1"
    then
    shell.run("fg","shell")
elseif option=="2"
    then
    shell.run(,"o-m")
elseif option=="3"
    then
    shell.run("shudown")
elseif option=="4"
    then
    shell.run("reboot")
end

sleep(3)
end
while true do
menu()
end
