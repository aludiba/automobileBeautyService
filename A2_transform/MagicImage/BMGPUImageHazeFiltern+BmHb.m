#import "BMGPUImageHazeFiltern+BmHb.h"
@implementation BMGPUImageHazeFiltern (BmHb)
+ (BOOL)gInitbmbmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)sSetdistancebmbmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)LSetslopebmbmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
