#import "UIBarButtonItem+RACCommandSupportBmBmBmHb.h"
@implementation UIBarButtonItem (RACCommandSupportBmBmBmHb)
+ (BOOL)rac_commandBmBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setRac_commandBmBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)rac_commandPerformActionBmBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
