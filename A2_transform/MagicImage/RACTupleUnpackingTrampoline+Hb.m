#import "RACTupleUnpackingTrampoline+Hb.h"
@implementation RACTupleUnpackingTrampoline (Hb)
+ (BOOL)trampolineHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
