#import "UIBarButtonItem+RACCommandSupportBmBmBm.h"
@implementation UIBarButtonItem (RACCommandSupportBmBmBm)
+ (BOOL)rac_commandBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setRac_commandBmBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)rac_commandPerformActionBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
