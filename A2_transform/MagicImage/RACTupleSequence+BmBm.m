#import "RACTupleSequence+BmBm.h"
@implementation RACTupleSequence (BmBm)
+ (BOOL)sequenceWithTupleBackingArrayOffsetBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)arrayBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
