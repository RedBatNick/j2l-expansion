if not oEdit.undo_nochanges {
    if (show_question('The map has unsaved changes.#Are you sure you want to exit?')) {
        game_end()
    }
}
else {
if (file_exists("Screenie.png"))
{
   Background = sprite_add("Screenie.png",0,false,true,0,0)
}

for (i = 5; i <= 12; i+=1)
{
    if (file_exists("Save"+string(i)+".dat"))
        file_delete("Save"+string(i)+".dat");
}

global.savecount = 1
while file_exists("RewindSave"+string(global.savecount)+".dat")
{
file_delete("RewindSave"+string(global.savecount)+".dat")
global.savecount += 1 }
    game_end()
}


