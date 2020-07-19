#import "BMBMRACEmptySignalLp.h"
@implementation BMBMRACEmptySignalLp
+ (BOOL)iFsetname:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)tFname:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)nAempty:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)cDsubscribe:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
