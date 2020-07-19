#import "UIButton+RACCommandSupportBm.h"
@implementation UIButton (RACCommandSupportBm)
+ (BOOL)rac_commandBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setRac_commandBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)rac_commandPerformActionBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
