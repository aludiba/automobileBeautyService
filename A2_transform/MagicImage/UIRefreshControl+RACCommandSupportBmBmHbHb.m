#import "UIRefreshControl+RACCommandSupportBmBmHbHb.h"
@implementation UIRefreshControl (RACCommandSupportBmBmHbHb)
+ (BOOL)rac_commandBmBmHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setRac_commandBmBmHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
