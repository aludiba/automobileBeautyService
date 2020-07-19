#import "GPUImageHazeFilter+Bm.h"
@implementation GPUImageHazeFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setDistanceBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setSlopeBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
