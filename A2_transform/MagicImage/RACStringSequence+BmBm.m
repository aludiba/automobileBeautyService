#import "RACStringSequence+BmBm.h"
@implementation RACStringSequence (BmBm)
+ (BOOL)sequenceWithStringOffsetBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)arrayBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
