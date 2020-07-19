#import "BMRACDynamicSignals.h"
@implementation BMRACDynamicSignals
+ (BOOL)ACreatesignal:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)uSubscribe:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
