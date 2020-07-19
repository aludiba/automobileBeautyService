#import "RACTwoTuple+BmBm.h"
@implementation RACTwoTuple (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initWithBackingArrayBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)tupleByAddingObjectBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)packFirstBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
