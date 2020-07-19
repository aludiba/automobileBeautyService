#import "GPUImageHazeFilter+Hb.h"
@implementation GPUImageHazeFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setDistanceHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setSlopeHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
