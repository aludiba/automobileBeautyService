#import "BMBMRACGroupedSignalQH.h"
@implementation BMBMRACGroupedSignalQH
+ (BOOL)rEsignalwithkeybm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
