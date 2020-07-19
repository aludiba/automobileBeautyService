#import "RACArraySequence+BmBm.h"
@implementation RACArraySequence (BmBm)
+ (BOOL)sequenceWithArrayOffsetBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)arrayBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
