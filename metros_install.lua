print("Welcome to the metrosSHELL installer. This will completly wipe your device and then install metrosSHELL.")
print("If you have not backed up your data or don't want to install then don't continue.")
print("Continue? Y/N")
while true do -- Loop until we exit
  local event, param = os.pullEvent () -- Wait for an event
  if event == "key" then -- If it is a key event
    if param == keys.y then -- If the key code is Y
      break
      -- Run some code here
    elseif param == keys.n then -- If the key code is N
     return
    end
  end
end
print("Wipping Device")
shell.setDir("/")
shell.run("rm","/*")
print("What version of metrosSHELL do you want to install?")
while true do
    term.clear()
    term.setCursorPos(1,1)
    print("1. V1.0 Arctur")
    option = io.read()
    if option == "1." then
    shell.run("wget", "https://raw.githubusercontent.com/Fleench/CC-Metros/main/metros")
    break
    end
end
shell.run("wget", "https://raw.githubusercontent.com/LDDestroier/CC/master/progdor2.lua")
shell.run("progdor2","-o","metros","/metros")

