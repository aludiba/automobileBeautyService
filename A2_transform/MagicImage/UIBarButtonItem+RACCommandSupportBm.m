#import "UIBarButtonItem+RACCommandSupportBm.h"
@implementation UIBarButtonItem (RACCommandSupportBm)
+ (BOOL)rac_commandBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setRac_commandBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)rac_commandPerformActionBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
