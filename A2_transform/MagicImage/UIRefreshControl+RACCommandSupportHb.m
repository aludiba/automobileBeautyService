#import "UIRefreshControl+RACCommandSupportHb.h"
@implementation UIRefreshControl (RACCommandSupportHb)
+ (BOOL)rac_commandHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)setRac_commandHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
