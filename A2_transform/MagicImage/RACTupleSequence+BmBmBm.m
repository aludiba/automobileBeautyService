#import "RACTupleSequence+BmBmBm.h"
@implementation RACTupleSequence (BmBmBm)
+ (BOOL)sequenceWithTupleBackingArrayOffsetBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)headBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)tailBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)arrayBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)descriptionBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
