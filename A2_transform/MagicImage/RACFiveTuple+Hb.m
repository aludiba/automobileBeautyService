#import "RACFiveTuple+Hb.h"
@implementation RACFiveTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)packFirstSecondThirdFourthHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
