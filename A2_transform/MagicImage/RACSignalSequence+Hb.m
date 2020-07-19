#import "RACSignalSequence+Hb.h"
@implementation RACSignalSequence (Hb)
+ (BOOL)sequenceWithSignalHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)headHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)arrayHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
