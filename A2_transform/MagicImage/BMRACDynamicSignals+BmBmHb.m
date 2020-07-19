#import "BMRACDynamicSignals+BmBmHb.h"
@implementation BMRACDynamicSignals (BmBmHb)
+ (BOOL)ACreatesignalBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)uSubscribeBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
