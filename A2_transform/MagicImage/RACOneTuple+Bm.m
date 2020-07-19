#import "RACOneTuple+Bm.h"
@implementation RACOneTuple (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)initWithBackingArrayBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)tupleByAddingObjectBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)packBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
