#import "RACFiveTuple+BmHb.h"
@implementation RACFiveTuple (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)initWithBackingArrayBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)packFirstSecondThirdFourthBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)isEqualBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
