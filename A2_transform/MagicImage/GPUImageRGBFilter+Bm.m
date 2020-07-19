#import "GPUImageRGBFilter+Bm.h"
@implementation GPUImageRGBFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setRedBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setGreenBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setBlueBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
