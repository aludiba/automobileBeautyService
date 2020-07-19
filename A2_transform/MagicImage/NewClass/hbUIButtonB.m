#import "hbUIButtonB.h"
@implementation hbUIButtonB
+ (BOOL)Lrac_command:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)MSetrac_Command:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)drac_hijackActionAndTargetIfNeeded:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)vRac_Commandperformaction:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
