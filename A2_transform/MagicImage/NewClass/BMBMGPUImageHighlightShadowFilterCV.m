#import "BMBMGPUImageHighlightShadowFilterCV.h"
@implementation BMBMGPUImageHighlightShadowFilterCV
+ (BOOL)cVinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)DLsetshadows:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)lTsethighlights:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
