#import "RACFourTuple+BmHb.h"
@implementation RACFourTuple (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)initWithBackingArrayBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)tupleByAddingObjectBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)packFirstSecondThirdBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)isEqualBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
