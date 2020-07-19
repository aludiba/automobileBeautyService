#import "BMRACDynamicSignals+BmBm.h"
@implementation BMRACDynamicSignals (BmBm)
+ (BOOL)ACreatesignalBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)uSubscribeBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
