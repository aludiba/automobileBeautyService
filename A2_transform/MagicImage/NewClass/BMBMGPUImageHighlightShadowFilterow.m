#import "BMBMGPUImageHighlightShadowFilterow.h"
@implementation BMBMGPUImageHighlightShadowFilterow
+ (BOOL)mFinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)zLsetshadows:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ZGsethighlights:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
