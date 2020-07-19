#import "NSBundle+MJRefreshBm.h"
@implementation NSBundle (MJRefreshBm)
+ (BOOL)mj_refreshBundleBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)mj_arrowImageBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mj_localizedStringForKeyBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)mj_localizedStringForKeyValueBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
