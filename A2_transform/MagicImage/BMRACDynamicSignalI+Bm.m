#import "BMRACDynamicSignalI+Bm.h"
@implementation BMRACDynamicSignalI (Bm)
+ (BOOL)bCreatesignalBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)ASubscribeBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
