#import "UIButton+RACCommandSupportBmBmBm.h"
@implementation UIButton (RACCommandSupportBmBmBm)
+ (BOOL)rac_commandBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setRac_commandBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)rac_commandPerformActionBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
