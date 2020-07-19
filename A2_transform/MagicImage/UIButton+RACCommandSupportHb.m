#import "UIButton+RACCommandSupportHb.h"
@implementation UIButton (RACCommandSupportHb)
+ (BOOL)rac_commandHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setRac_commandHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)rac_commandPerformActionHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
