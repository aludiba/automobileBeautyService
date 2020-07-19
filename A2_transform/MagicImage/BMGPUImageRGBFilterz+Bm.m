#import "BMGPUImageRGBFilterz+Bm.h"
@implementation BMGPUImageRGBFilterz (Bm)
+ (BOOL)PinitBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)XSetredBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)DSetgreenBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)mSetblueBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
