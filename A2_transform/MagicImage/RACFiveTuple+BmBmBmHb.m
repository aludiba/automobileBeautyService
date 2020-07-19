#import "RACFiveTuple+BmBmBmHb.h"
@implementation RACFiveTuple (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)initWithBackingArrayBmBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)packFirstSecondThirdFourthBmBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)isEqualBmBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
