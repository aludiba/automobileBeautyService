#import "UIRefreshControl+AFNetworkingBmBm.h"
@implementation UIRefreshControl (AFNetworkingBmBm)
+ (BOOL)af_notificationObserverBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setRefreshingWithStateOfTaskBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
