#import "BMRACGroupedSignalK.h"
@implementation BMRACGroupedSignalK
+ (BOOL)PSignalwithkey:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
