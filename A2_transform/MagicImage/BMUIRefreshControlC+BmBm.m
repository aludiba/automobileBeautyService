#import "BMUIRefreshControlC+BmBm.h"
@implementation BMUIRefreshControlC (BmBm)
+ (BOOL)Iaf_notificationObserverBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)oSetrefreshingwithstateoftaskBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
