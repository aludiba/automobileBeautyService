#import "hbRACReturnSignalF.h"
@implementation hbRACReturnSignalF
+ (BOOL)ySetname:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)Hname:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)zReturn:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)wSubscribe:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
