#import "BMBMGPUImageAlphaBlendFilterlx.h"
@implementation BMBMGPUImageAlphaBlendFilterlx
+ (BOOL)gCinit:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)lNsetmix:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
