#import "UIRefreshControl+RACCommandSupportBmBmBm.h"
@implementation UIRefreshControl (RACCommandSupportBmBmBm)
+ (BOOL)rac_commandBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setRac_commandBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
