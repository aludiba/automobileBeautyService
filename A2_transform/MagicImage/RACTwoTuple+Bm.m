#import "RACTwoTuple+Bm.h"
@implementation RACTwoTuple (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)initWithBackingArrayBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)tupleByAddingObjectBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)packFirstBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
