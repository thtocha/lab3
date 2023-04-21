@echo off

mkdir "Lab_work\group\Tatochenko\command_line\hidden_folder"
mkdir "Lab_work\group\Tatochenko\command_line\not_hidden_folder"

echo: Folders were created!

tree /a /f

attrib +h "Lab_work\group\Tatochenko\command_line\hidden_folder"
echo: The "hidden_folder" folder was hidden!

xcopy /? > "Lab_work\group\Tatochenko\command_line\not_hidden_folder\copyhelp.txt"
echo: "copyhelp.txt" Created!

xcopy > "Lab_work\group\Tatochenko\command_line\not_hidden_folder\copyhelp.txt" "Lab_work\group\Tatochenko\command_line\hidden_folder\copied_copyhelp.txt"
echo: "copied_copyhelp.txt" Created!

mkdir "Lab_work\group\Tatochenko\batch\hidden_folder"
mkdir "Lab_work\group\Tatochenko\batch\not_hidden_folder"

echo: Folders were created!

attrib +h "Lab_work\group\Tatochenko\batch\hidden_folder"
echo: The "hidden_folder" folder was hidden!

xcopy /? > "Lab_work\group\Tatochenko\batch\not_hidden_folder\copyhelp.txt"
echo: "copyhelp.txt" Created!

xcopy > "Lab_work\group\Tatochenko\batch\not_hidden_folder\copyhelp.txt" "Lab_work\group\Tatochenko\batch\hidden_folder\copied_copyhelp.txt"
echo: "copied_copyhelp.txt" Created!

tree /a /f