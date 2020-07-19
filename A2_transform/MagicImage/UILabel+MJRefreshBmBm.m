#import "UILabel+MJRefreshBmBm.h"
@implementation UILabel (MJRefreshBmBm)
+ (BOOL)mj_labelBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)mj_textWithBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
