#import "RACDynamicSequence+Hb.h"
@implementation RACDynamicSequence (Hb)
+ (BOOL)sequenceWithHeadBlockTailblockHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)headHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
