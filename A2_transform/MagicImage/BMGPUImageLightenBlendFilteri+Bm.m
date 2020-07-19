#import "BMGPUImageLightenBlendFilteri+Bm.h"
@implementation BMGPUImageLightenBlendFilteri (Bm)
+ (BOOL)TinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
