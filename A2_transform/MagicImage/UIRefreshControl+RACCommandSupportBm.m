#import "UIRefreshControl+RACCommandSupportBm.h"
@implementation UIRefreshControl (RACCommandSupportBm)
+ (BOOL)rac_commandBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setRac_commandBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
