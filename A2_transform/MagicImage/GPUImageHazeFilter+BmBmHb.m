#import "GPUImageHazeFilter+BmBmHb.h"
@implementation GPUImageHazeFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setDistanceBmBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setSlopeBmBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
