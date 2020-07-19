#import "UIButton+RACCommandSupportBmBmHb.h"
@implementation UIButton (RACCommandSupportBmBmHb)
+ (BOOL)rac_commandBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setRac_commandBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)rac_commandPerformActionBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
