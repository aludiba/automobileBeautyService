#import "RACOneTuple+BmBmBm.h"
@implementation RACOneTuple (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)initWithBackingArrayBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)tupleByAddingObjectBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)packBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
