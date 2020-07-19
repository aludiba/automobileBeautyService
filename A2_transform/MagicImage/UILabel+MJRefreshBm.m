#import "UILabel+MJRefreshBm.h"
@implementation UILabel (MJRefreshBm)
+ (BOOL)mj_labelBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mj_textWithBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
