#import "UIRefreshControl+RACCommandSupportBmBm.h"
@implementation UIRefreshControl (RACCommandSupportBmBm)
+ (BOOL)rac_commandBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setRac_commandBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
