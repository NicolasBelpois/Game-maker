/// @description Insert description here

//overrigth old save

if (file_exists(SAVEFILES)) file_delete(SAVEFILES);

//Create new save

var file;
file = file_text_open_write(SAVEFILES);
file_text_write_real(file,room);
file_text_close(file);