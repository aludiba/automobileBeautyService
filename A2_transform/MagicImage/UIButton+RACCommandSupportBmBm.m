#import "UIButton+RACCommandSupportBmBm.h"
@implementation UIButton (RACCommandSupportBmBm)
+ (BOOL)rac_commandBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setRac_commandBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)rac_commandPerformActionBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
