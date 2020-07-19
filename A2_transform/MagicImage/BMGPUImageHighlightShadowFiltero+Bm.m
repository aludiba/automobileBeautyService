#import "BMGPUImageHighlightShadowFiltero+Bm.h"
@implementation BMGPUImageHighlightShadowFiltero (Bm)
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)lSetshadowsBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)gSethighlightsBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
