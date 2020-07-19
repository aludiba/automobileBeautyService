#import "BMGPUImageHighlightShadowFilterJ+Bm.h"
@implementation BMGPUImageHighlightShadowFilterJ (Bm)
+ (BOOL)pInitbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)uSetshadowsbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)dSethighlightsbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
