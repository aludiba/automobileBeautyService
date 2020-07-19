#import "UIRefreshControl+RACCommandSupportBmHb.h"
@implementation UIRefreshControl (RACCommandSupportBmHb)
+ (BOOL)rac_commandBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setRac_commandBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
