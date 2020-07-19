#import "BMBMRACEmptySignalLp+Bm.h"
@implementation BMBMRACEmptySignalLp (Bm)
+ (BOOL)iFsetnameBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)tFnameBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)nAemptyBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)cDsubscribeBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
