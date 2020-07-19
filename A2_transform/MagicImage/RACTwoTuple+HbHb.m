#import "RACTwoTuple+HbHb.h"
@implementation RACTwoTuple (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)initWithBackingArrayHbHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)tupleByAddingObjectHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)packFirstHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)isEqualHbHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
