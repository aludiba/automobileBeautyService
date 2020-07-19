#import "BMGPUImageHueBlendFilterS+Bm.h"
@implementation BMGPUImageHueBlendFilterS (Bm)
+ (BOOL)tinitBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
