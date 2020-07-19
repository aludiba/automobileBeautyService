#import "UIRefreshControl+RACCommandSupportBmBmHb.h"
@implementation UIRefreshControl (RACCommandSupportBmBmHb)
+ (BOOL)rac_commandBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setRac_commandBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
