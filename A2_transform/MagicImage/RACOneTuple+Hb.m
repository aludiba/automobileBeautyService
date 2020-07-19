#import "RACOneTuple+Hb.h"
@implementation RACOneTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)tupleByAddingObjectHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)packHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
