#import "RACOneTuple+BmHb.h"
@implementation RACOneTuple (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)initWithBackingArrayBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)tupleByAddingObjectBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)packBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)isEqualBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
