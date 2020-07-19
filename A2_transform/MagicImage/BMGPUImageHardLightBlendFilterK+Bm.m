#import "BMGPUImageHardLightBlendFilterK+Bm.h"
@implementation BMGPUImageHardLightBlendFilterK (Bm)
+ (BOOL)XinitBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
