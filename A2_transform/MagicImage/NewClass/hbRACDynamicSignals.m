#import "hbRACDynamicSignals.h"
@implementation hbRACDynamicSignals
+ (BOOL)iCreatesignalbmbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)jSubscribebmbm:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
