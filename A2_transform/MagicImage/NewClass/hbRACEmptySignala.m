#import "hbRACEmptySignala.h"
@implementation hbRACEmptySignala
+ (BOOL)gSetname:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)uname:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)eempty:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)dSubscribe:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
