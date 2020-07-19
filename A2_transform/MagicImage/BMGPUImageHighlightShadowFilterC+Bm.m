#import "BMGPUImageHighlightShadowFilterC+Bm.h"
@implementation BMGPUImageHighlightShadowFilterC (Bm)
+ (BOOL)vinitBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)lSetshadowsBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)tSethighlightsBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
