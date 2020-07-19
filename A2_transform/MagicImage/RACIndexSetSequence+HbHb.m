#import "RACIndexSetSequence+HbHb.h"
@implementation RACIndexSetSequence (HbHb)
+ (BOOL)sequenceWithIndexSetHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)sequenceWithIndexSetSequenceOffsetHbHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)headHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)tailHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)descriptionHbHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
