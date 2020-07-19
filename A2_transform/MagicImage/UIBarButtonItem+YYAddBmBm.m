#import "UIBarButtonItem+YYAddBmBm.h"
@implementation UIBarButtonItem (YYAddBmBm)
+ (BOOL)setActionBlockBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)actionBlockBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
