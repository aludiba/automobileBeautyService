#import "NSBundle+MJRefreshBmBmHb.h"
@implementation NSBundle (MJRefreshBmBmHb)
+ (BOOL)mj_refreshBundleBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)mj_arrowImageBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)mj_localizedStringForKeyBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)mj_localizedStringForKeyValueBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
