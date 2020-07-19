#import "RACStringSequence+BmBmBm.h"
@implementation RACStringSequence (BmBmBm)
+ (BOOL)sequenceWithStringOffsetBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)headBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)tailBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)arrayBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)descriptionBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
