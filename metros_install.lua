shell.setDir("./")
shell.run("wget","https://raw.githubusercontent.com/Fleench/CC-Metros/main/metrosV0.5")
shell.run("wget", "https://raw.githubusercontent.com/LDDestroier/CC/master/progdor2.lua")
shell.run("progdor2","-o","metrosV0.5","/metros")
shell.run("delete","startup")
shell.run("wget", "https://raw.githubusercontent.com/Fleench/CC-Metros/main/startup.lua", "startup")
shell.run("reboot")
