#import "BMGPUImageRGBFilterK+Bm.h"
@implementation BMGPUImageRGBFilterK (Bm)
+ (BOOL)rinitBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)lSetredBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)PSetgreenBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wSetblueBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
