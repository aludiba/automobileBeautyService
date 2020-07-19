#import "GPUImageHazeFilter+BmBm.h"
@implementation GPUImageHazeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setDistanceBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setSlopeBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
