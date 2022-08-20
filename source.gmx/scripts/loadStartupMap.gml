var startup = "startup.jmap";

if (file_exists(startup)) 
{
    global.shouldresetloadedmapname = true;
    loadMap(startup);
}
