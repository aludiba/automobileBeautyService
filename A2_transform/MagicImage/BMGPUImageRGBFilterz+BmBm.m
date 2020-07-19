#import "BMGPUImageRGBFilterz+BmBm.h"
@implementation BMGPUImageRGBFilterz (BmBm)
+ (BOOL)PinitBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)XSetredBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)DSetgreenBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mSetblueBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
