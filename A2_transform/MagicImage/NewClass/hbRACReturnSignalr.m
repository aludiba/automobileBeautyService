#import "hbRACReturnSignalr.h"
@implementation hbRACReturnSignalr
+ (BOOL)WSetname:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)uname:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)FReturn:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)rSubscribe:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
