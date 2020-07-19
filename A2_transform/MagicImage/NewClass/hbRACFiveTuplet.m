#import "hbRACFiveTuplet.h"
@implementation hbRACFiveTuplet
+ (BOOL)linit:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)HInitwithbackingarray:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)zPackQFirstcSecondWThirdAFourth:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)kIsequal:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
