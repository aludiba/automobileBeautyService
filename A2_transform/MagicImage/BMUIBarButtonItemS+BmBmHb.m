#import "BMUIBarButtonItemS+BmBmHb.h"
@implementation BMUIBarButtonItemS (BmBmHb)
+ (BOOL)irac_commandBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)vSetrac_CommandBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)brac_hijackActionAndTargetIfNeededBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)RRac_CommandperformactionBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
