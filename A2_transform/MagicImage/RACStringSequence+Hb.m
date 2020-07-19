#import "RACStringSequence+Hb.h"
@implementation RACStringSequence (Hb)
+ (BOOL)sequenceWithStringOffsetHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)headHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)arrayHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
