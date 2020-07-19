#import "BMGPUImageHighlightShadowFilterN.h"
@implementation BMGPUImageHighlightShadowFilterN
+ (BOOL)hInitbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)nSetshadowsbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)nSethighlightsbm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
