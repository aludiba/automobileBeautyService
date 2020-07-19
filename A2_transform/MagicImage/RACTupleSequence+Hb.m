#import "RACTupleSequence+Hb.h"
@implementation RACTupleSequence (Hb)
+ (BOOL)sequenceWithTupleBackingArrayOffsetHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)headHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)arrayHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
