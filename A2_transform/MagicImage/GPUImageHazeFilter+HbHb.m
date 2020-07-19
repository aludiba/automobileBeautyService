#import "GPUImageHazeFilter+HbHb.h"
@implementation GPUImageHazeFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setDistanceHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setSlopeHbHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
