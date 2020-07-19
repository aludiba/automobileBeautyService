#import "RACTwoTuple+BmBmBm.h"
@implementation RACTwoTuple (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)initWithBackingArrayBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)tupleByAddingObjectBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)packFirstBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
