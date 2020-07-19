#import "BMRACDynamicSignals+Bm.h"
@implementation BMRACDynamicSignals (Bm)
+ (BOOL)ACreatesignalBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)uSubscribeBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
