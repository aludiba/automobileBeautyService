#import "BMGPUImageClosingFilterT+Bm.h"
@implementation BMGPUImageClosingFilterT (Bm)
+ (BOOL)binitBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)HInitwithradiusBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)RSetverticaltexelspacingBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)vSethorizontaltexelspacingBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
