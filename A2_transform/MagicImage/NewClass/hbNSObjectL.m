#import "hbNSObjectL.h"
@implementation hbNSObjectL
+ (BOOL)RarcDebugRetain:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)FarcDebugRelease:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)DarcDebugAutorelease:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)VarcDebugRetainCount:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
