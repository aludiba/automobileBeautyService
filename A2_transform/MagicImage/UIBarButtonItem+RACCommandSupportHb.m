#import "UIBarButtonItem+RACCommandSupportHb.h"
@implementation UIBarButtonItem (RACCommandSupportHb)
+ (BOOL)rac_commandHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setRac_commandHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)rac_commandPerformActionHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
