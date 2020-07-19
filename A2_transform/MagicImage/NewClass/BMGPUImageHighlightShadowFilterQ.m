#import "BMGPUImageHighlightShadowFilterQ.h"
@implementation BMGPUImageHighlightShadowFilterQ
+ (BOOL)eInitbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)bSetshadowsbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)jSethighlightsbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
