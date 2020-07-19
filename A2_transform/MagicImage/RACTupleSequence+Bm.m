#import "RACTupleSequence+Bm.h"
@implementation RACTupleSequence (Bm)
+ (BOOL)sequenceWithTupleBackingArrayOffsetBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)arrayBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
