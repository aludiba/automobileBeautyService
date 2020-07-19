#import "BMUIRefreshControlW+Bm.h"
@implementation BMUIRefreshControlW (Bm)
+ (BOOL)ZAf_NotificationobserverbmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)oSetrefreshingwithstateoftaskbmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
