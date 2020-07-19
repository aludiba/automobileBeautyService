#import "BMBMGPUImageHighlightShadowFilterow+Bm.h"
@implementation BMBMGPUImageHighlightShadowFilterow (Bm)
+ (BOOL)mFinitBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)zLsetshadowsBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)ZGsethighlightsBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
