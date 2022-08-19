undoStackPos = 0;
undoStackStart = 0;
undoStackEnd = 0;
undoStackSize = 2^16;

for( var i = 0; i < undoStackSize; i++ ) {
    undoStack[i] = 'n';
}
