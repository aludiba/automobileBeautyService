#import "RACThreeTuple+BmBmBmHb.h"
@implementation RACThreeTuple (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)initWithBackingArrayBmBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)tupleByAddingObjectBmBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)packFirstSecondBmBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)isEqualBmBmBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
