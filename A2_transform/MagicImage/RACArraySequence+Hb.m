#import "RACArraySequence+Hb.h"
@implementation RACArraySequence (Hb)
+ (BOOL)sequenceWithArrayOffsetHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)headHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)arrayHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
