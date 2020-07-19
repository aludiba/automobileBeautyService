#import "BMGPUImageToonFilteri+BmBm.h"
@implementation BMGPUImageToonFilteri (BmBm)
+ (BOOL)jinitBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)iSetthresholdBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)kSetquantizationlevelsBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
