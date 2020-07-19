#import "BMBMGPUImageHighlightShadowFilterox.h"
@implementation BMBMGPUImageHighlightShadowFilterox
+ (BOOL)XFinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)YLsetshadows:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)UGsethighlights:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
