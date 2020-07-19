#import "BMBMGPUImageHighlightShadowFilterJN.h"
@implementation BMBMGPUImageHighlightShadowFilterJN
+ (BOOL)WPinitbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)FUsetshadowsbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)NDsethighlightsbm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
