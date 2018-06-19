
# # Require the win32ole library:
# require 'win32ole'
#
# class SHELL
#
#   def type_in_notepad
#     # Create an instance of the Wscript Shell:
#     wsh = WIN32OLE.new('Wscript.Shell')
#     # Try to activate the Notepad window:
#     if wsh.AppActivate('Notepad')
#       sleep(1)
#       # Enter text into Notepad:
#       wsh.SendKeys('Ruby{TAB}on{TAB}Windows{ENTER}')
#       # ALT-F to pull down File menu, then A to select Save As...:
#       wsh.SendKeys('%F')
#       wsh.SendKeys('A')
#       sleep(1)
#       if wsh.AppActivate('Save As')
#         wsh.SendKeys('c:\temp\filename.txt{ENTER}')
#         sleep(1)
#         # If prompted to overwrite existing file:
#         if wsh.AppActivate('Save As')
#           # Enter 'Y':
#           wsh.SendKeys('Y')
#         end
#       end
#       # Quit Notepad with ALT-F4:
#       wsh.SendKeys('%{F4}')
#     end
#
#   end
#
#   def type(title, text)
#     # Create an instance of the Wscript Shell:
#     wsh = WIN32OLE.new('Wscript.Shell')
#     if wsh.AppActivate(title)
#       sleep(2)
#       # Enter text into active element
#       wsh.SendKeys(text)
#     end
#   end
# end
#
# #sh = SHELL.new
# #sh.type "Open", "{TAB}{TAB}hi.txt"