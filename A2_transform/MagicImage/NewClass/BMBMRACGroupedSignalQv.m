#import "BMBMRACGroupedSignalQv.h"
@implementation BMBMRACGroupedSignalQv
+ (BOOL)PEsignalwithkey:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
