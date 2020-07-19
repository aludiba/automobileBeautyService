#import "BMUIBarButtonItemS.h"
@implementation BMUIBarButtonItemS
+ (BOOL)irac_command:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)vSetrac_Command:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)brac_hijackActionAndTargetIfNeeded:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)RRac_Commandperformaction:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
