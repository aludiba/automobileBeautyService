#import "UIRefreshControl+AFNetworkingBm.h"
@implementation UIRefreshControl (AFNetworkingBm)
+ (BOOL)af_notificationObserverBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setRefreshingWithStateOfTaskBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
