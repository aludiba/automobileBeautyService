#import "RACOneTuple+BmBm.h"
@implementation RACOneTuple (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initWithBackingArrayBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)tupleByAddingObjectBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)packBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
