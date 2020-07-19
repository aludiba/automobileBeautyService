#import "BMBMRACGroupedSignalKP.h"
@implementation BMBMRACGroupedSignalKP
+ (BOOL)mPsignalwithkey:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
