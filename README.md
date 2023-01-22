1. Extract .ks files from data.xp3 included with the game to the 'raw' directory (already done)

2. (Easy way) Open unpack_script_DANGEROUS and run unpack.bat, skip to step 3. 

2. (Manual way) Select a folder containing .ks files and convert it into a .xlsx file with VNTextPatch. e.g. 

./VNTextPatch.exe extractlocal '../../../raw/scenario' '../../../xlsx/script.xlsx'
(Do not include a slash at the end of the directory path)

3. Edit the .xlsx file

4. (Easy way) Run repack.bat, skip to step 6

4. (Manual way) Convert the .xlsx file into .ks files with VNTextPatch. You need the directory containing the original, unedited .ks files, the edited .xlsx file and an output directory for the patched .ks files. e.g.

./VNTextPatch.exe insertlocal '../../../raw/scenario' '../../../xlsx/script.xlsx' '../../../translated'

5. Repack the .ks files into an .xp3 file using insani's xp3tools. e.g.

./xp3-repack.exe '../../translated' '../../patch/patch.xp3'

6. Copy patch.xp3 into the original game directory, next to data.xp3 (must be named patch.xp3)

7. (Optional) Run killgame.bat to kill the game process

8. Run the game

Possible issues:

VNTextPatch cannot open the .xlsx file if it is already open in Excel, so close Excel before running the tool.

The game process does not exit when the game is closed and for some reason remains running in the background, so you might need to kill it with task manager before doing anything with its files (or use killgame.bat).

Word wrap settings are controlled by VNTextPatch.exe.config in the VNTextPatch directory. The tool is compiled by default to use proportional, not monospace wrapping. Excess text is automatically moved to the next textbox so there is no hard limit no how long a translation should be (but ideally should be avoided, in case of bugs)

The unpack script is dangerous because it overwrites everything, including script.xlsx, replacing it with a fresh .xlsx file. You should not have to use it more than once. The git repository probably already has the .ks files unpacked so you shouldn't have to use it at all unless you want to extract files from another game.
