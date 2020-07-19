#import "hbRACDynamicSignali.h"
@implementation hbRACDynamicSignali
+ (BOOL)NCreatesignalbmbm:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)PSubscribebmbm:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
