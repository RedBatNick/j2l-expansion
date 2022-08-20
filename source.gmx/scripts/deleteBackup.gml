var backup = prefix_project_path_if_needed("backup.jmap");

if (file_exists(backup))
    file_delete(backup);

alarm[3] = global.backup_period;
