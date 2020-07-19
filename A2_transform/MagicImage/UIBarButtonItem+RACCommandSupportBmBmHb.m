#import "UIBarButtonItem+RACCommandSupportBmBmHb.h"
@implementation UIBarButtonItem (RACCommandSupportBmBmHb)
+ (BOOL)rac_commandBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setRac_commandBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)rac_commandPerformActionBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
