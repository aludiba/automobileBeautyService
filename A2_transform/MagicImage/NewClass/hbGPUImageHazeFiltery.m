#import "hbGPUImageHazeFiltery.h"
@implementation hbGPUImageHazeFiltery
+ (BOOL)sInithb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)jSetdistancehb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)cSetslopehb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
