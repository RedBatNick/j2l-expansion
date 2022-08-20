// Returns a string prefixed with global.editor_project_path
// if the game is running from the editor.

var str = argument[0];

if (global.run_from_editor) {
    return global.editor_project_path + str;
}
else return str;
