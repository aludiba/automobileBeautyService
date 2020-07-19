#import "RACThreeTuple+HbHb.h"
@implementation RACThreeTuple (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)initWithBackingArrayHbHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)tupleByAddingObjectHbHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)packFirstSecondHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)isEqualHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
