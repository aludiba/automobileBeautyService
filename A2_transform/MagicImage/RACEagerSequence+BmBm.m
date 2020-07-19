#import "RACEagerSequence+BmBm.h"
@implementation RACEagerSequence (BmBm)
+ (BOOL)returnBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)bindBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)concatBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)eagerSequenceBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lazySequenceBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)foldRightWithStartReduceBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
