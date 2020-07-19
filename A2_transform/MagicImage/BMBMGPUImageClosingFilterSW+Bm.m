#import "BMBMGPUImageClosingFilterSW+Bm.h"
@implementation BMBMGPUImageClosingFilterSW (Bm)
+ (BOOL)aEinitBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)PRinitwithradiusBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)EAsetverticaltexelspacingBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)fPsethorizontaltexelspacingBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
