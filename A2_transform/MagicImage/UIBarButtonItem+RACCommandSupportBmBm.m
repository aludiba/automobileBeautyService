#import "UIBarButtonItem+RACCommandSupportBmBm.h"
@implementation UIBarButtonItem (RACCommandSupportBmBm)
+ (BOOL)rac_commandBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setRac_commandBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)rac_commandPerformActionBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
