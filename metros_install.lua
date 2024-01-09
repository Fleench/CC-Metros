print("Welcome to the metrosSHELL installer. This will completly wipe your device and then install metrosSHELL.")
print("If you have not backed up your data or don't want to install metrosSHELL then don't continue.")
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
while true do
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColor(4)
    print("What version of metrosSHELL do you want to install?")
    term.setTextColor(1)
    print("0. Latest Dev Snapshot")
    print("1. V1.0 Arctur")
  option = io.read()
    if option == "1" then
    shell.run("wget", "https://raw.githubusercontent.com/Fleench/CC-Metros/main/metros")
    break
  elseif option == "0" then
    shell.run("wget https://raw.githubusercontent.com/Fleench/CC-Metros/main/LatestSnapShot metros")
    break
  end
end
shell.run("wget", "https://raw.githubusercontent.com/LDDestroier/CC/master/progdor2.lua")
shell.run("progdor2.lua","-o","metros","/metros")
shell.run("wget", "https://raw.githubusercontent.com/Fleench/CC-Metros/main/startup.lua")
shell.run("reboot")
