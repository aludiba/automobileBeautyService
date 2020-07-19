#import "NSBundle+MJRefreshBmBm.h"
@implementation NSBundle (MJRefreshBmBm)
+ (BOOL)mj_refreshBundleBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mj_arrowImageBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)mj_localizedStringForKeyBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)mj_localizedStringForKeyValueBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
