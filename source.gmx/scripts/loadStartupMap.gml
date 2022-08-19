if (file_exists("startup.jmap")) {
    global.shouldresetloadedmapname = true;
    loadMap("startup.jmap");
}
