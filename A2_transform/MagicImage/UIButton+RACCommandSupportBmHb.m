#import "UIButton+RACCommandSupportBmHb.h"
@implementation UIButton (RACCommandSupportBmHb)
+ (BOOL)rac_commandBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setRac_commandBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)rac_commandPerformActionBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
