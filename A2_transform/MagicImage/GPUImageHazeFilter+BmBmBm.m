#import "GPUImageHazeFilter+BmBmBm.h"
@implementation GPUImageHazeFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setDistanceBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setSlopeBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
