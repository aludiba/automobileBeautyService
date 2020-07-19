#import "RACIndexSetSequence+Hb.h"
@implementation RACIndexSetSequence (Hb)
+ (BOOL)sequenceWithIndexSetHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)sequenceWithIndexSetSequenceOffsetHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)headHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
