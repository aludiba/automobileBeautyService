#import "RACFourTuple+Hb.h"
@implementation RACFourTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)tupleByAddingObjectHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)packFirstSecondThirdHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
