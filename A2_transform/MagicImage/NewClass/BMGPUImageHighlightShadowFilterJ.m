#import "BMGPUImageHighlightShadowFilterJ.h"
@implementation BMGPUImageHighlightShadowFilterJ
+ (BOOL)pInitbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)uSetshadowsbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)dSethighlightsbm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
