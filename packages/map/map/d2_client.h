#include "d2_structs.h"

int get_act(int act);
int d2_game_init(char *folderName);
int d2_dump_map(int seed, int difficulty, int levelCode, int edge, int nomapjson, char* argFolder);
void dump_map_collision_edge(int width, int height);
int checkSurroungPixels(int irow, int icol, int imgWidth, int imgHeight);
void dump_map_collision_bitmap_edge(int mapWidth, int mapHeight, char* bitmapFilename);