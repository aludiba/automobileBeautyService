#import "RACThreeTuple+Hb.h"
@implementation RACThreeTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)tupleByAddingObjectHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)packFirstSecondHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
