#import "RACTupleUnpackingTrampoline+BmBm.h"
@implementation RACTupleUnpackingTrampoline (BmBm)
+ (BOOL)trampolineBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
