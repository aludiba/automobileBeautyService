#import "RACTwoTuple+Hb.h"
@implementation RACTwoTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)tupleByAddingObjectHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)packFirstHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
