#import "RACTupleUnpackingTrampoline+Bm.h"
@implementation RACTupleUnpackingTrampoline (Bm)
+ (BOOL)trampolineBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
