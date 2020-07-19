#import "BMGPUImageHighlightShadowFilterC.h"
@implementation BMGPUImageHighlightShadowFilterC
+ (BOOL)vinit:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)lSetshadows:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)tSethighlights:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
