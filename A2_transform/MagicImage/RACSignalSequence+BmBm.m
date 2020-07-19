#import "RACSignalSequence+BmBm.h"
@implementation RACSignalSequence (BmBm)
+ (BOOL)sequenceWithSignalBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)arrayBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
