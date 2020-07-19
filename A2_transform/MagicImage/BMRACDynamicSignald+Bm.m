#import "BMRACDynamicSignald+Bm.h"
@implementation BMRACDynamicSignald (Bm)
+ (BOOL)nCreatesignalbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)YSubscribebmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
