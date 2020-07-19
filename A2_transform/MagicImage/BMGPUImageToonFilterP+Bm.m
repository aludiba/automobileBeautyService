#import "BMGPUImageToonFilterP+Bm.h"
@implementation BMGPUImageToonFilterP (Bm)
+ (BOOL)XinitBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)CSetthresholdBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)gSetquantizationlevelsBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
