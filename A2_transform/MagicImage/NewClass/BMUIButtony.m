#import "BMUIButtonY.h"
@implementation BMUIButtonY
+ (BOOL)Frac_command:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)mSetrac_Command:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)Drac_hijackActionAndTargetIfNeeded:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)GRac_Commandperformaction:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
