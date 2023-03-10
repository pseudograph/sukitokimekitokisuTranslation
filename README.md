Uses code from:

https://github.com/arcusmaximus/VNTranslationTools

http://www.insani.org/tools/


The step numbering is broken because I suck at markup

1. Extract .ks files from data.xp3 included with the game to the 'raw' directory (already done)

2. (Easy way) Open unpack_script_DANGEROUS and run unpack.bat, skip the next step 

2. (Manual way) Select a folder containing .ks files and convert it into a .xlsx file with VNTextPatch. e.g. 

./VNTextPatch.exe extractlocal '../../../raw/scenario' '../../../xlsx/script.xlsx'
(Do not include a slash at the end of the directory path)

3. Edit the .xlsx file

4. (Easy way) Run repack.bat, skip the next two steps

4. (Manual way) Convert the .xlsx file into .ks files with VNTextPatch. You need the directory containing the original, unedited .ks files, the edited .xlsx file and an output directory for the patched .ks files. e.g.

./VNTextPatch.exe insertlocal '../../../raw/scenario' '../../../xlsx/script.xlsx' '../../../translated'

5. (Manual way) Repack the .ks files into an .xp3 file using insani's xp3tools. e.g.

./xp3-repack.exe '../../translated' '../../patch/patch.xp3'

6. Copy patch.xp3 into the original game directory, next to data.xp3 (must be named patch.xp3)

7. (Optional) Run killgame.bat to kill the game process

8. Run the game

Possible issues:

* VNTextPatch cannot open the .xlsx file if it is already open in Excel, so close Excel before running the tool.

* The game process does not exit when the game is closed and for some reason remains running in the background, so you might need to kill it with task manager before doing anything with its files (or use killgame.bat).

* Word wrap settings are controlled by VNTextPatch.exe.config in the VNTextPatch directory. The tool is compiled by default to use proportional, not monospace wrapping. Excess text is automatically moved to the next textbox so there is no hard limit no how long a translation should be (but ideally should be avoided, in case of bugs)

* The unpack script is dangerous because it overwrites everything, including script.xlsx, replacing it with a fresh .xlsx file. You should not have to use it more than once. The git repository probably already has the .ks files unpacked so you shouldn't have to use it at all unless you want to extract files from another game.

* On translating blocks of text with a click-pause and line-break in between, but without a textbox reset:

Some sections of text are split into two rows in the .xlsx without a scene title row to separate them (e.g. ???????????????). This means that both chunks are supposed to appear in the same dialogue box, but the reader must click to display the second row.

You must append [r] to the first row to force a newline between the two, or the second row of text will appear directly after where the first row of text ends. You can (probably) insert [L] to force a click-pause wherever you want, but this shouldn't be needed. 

Row 33 of ????????????1 is an example of this.

In most other cases the repack tool should automatically insert [r]s to manually wrap the text.

* On wiping the textbox:

Add [l][er] to the script to wipe the textbox before displaying the next line (within the same row in the xlsx). Row 136 of ????????????1 is an example of this.

The second line of text appears vertically centred which is strange but preferable to filling an entire textbox with two lines of text, or worse, having the second line of text overflow into an additional textbox.

It should be possible to create a legitimately new "row" of text but we might have to edit the .ks files manually to do this, or write a tool that replaces [l][er]s with boilerplate code to segment the next line of text into a brand new dialogue box.
