#import "BMRACDynamicSignald.h"
@implementation BMRACDynamicSignald
+ (BOOL)nCreatesignalbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)YSubscribebm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
