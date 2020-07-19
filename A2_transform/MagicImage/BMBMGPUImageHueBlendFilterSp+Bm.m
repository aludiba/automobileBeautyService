#import "BMBMGPUImageHueBlendFilterSp+Bm.h"
@implementation BMBMGPUImageHueBlendFilterSp (Bm)
+ (BOOL)ZTinitBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
