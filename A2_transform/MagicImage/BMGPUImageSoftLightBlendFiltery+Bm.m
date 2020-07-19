#import "BMGPUImageSoftLightBlendFiltery+Bm.h"
@implementation BMGPUImageSoftLightBlendFiltery (Bm)
+ (BOOL)qinitBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
