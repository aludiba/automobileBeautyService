#import "BMGPUImageOverlayBlendFilterz+Bm.h"
@implementation BMGPUImageOverlayBlendFilterz (Bm)
+ (BOOL)vinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
