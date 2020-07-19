#import "GPUImageRGBFilter+BmBm.h"
@implementation GPUImageRGBFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setRedBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setGreenBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setBlueBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
