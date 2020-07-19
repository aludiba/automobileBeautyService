#import "BMRACDynamicSignalk.h"
@implementation BMRACDynamicSignalk
+ (BOOL)jCreatesignalbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)gSubscribebm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
