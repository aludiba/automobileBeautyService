#import "RACEagerSequence+BmBmBm.h"
@implementation RACEagerSequence (BmBmBm)
+ (BOOL)returnBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)bindBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)concatBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)eagerSequenceBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)lazySequenceBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)foldRightWithStartReduceBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
