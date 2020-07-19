#import "BMGPUImageHighlightShadowFiltero.h"
@implementation BMGPUImageHighlightShadowFiltero
+ (BOOL)Finit:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)lSetshadows:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)gSethighlights:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
