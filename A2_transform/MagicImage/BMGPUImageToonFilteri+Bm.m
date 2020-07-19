#import "BMGPUImageToonFilteri+Bm.h"
@implementation BMGPUImageToonFilteri (Bm)
+ (BOOL)jinitBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)iSetthresholdBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)kSetquantizationlevelsBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
