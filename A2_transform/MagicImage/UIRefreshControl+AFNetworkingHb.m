#import "UIRefreshControl+AFNetworkingHb.h"
@implementation UIRefreshControl (AFNetworkingHb)
+ (BOOL)af_notificationObserverHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setRefreshingWithStateOfTaskHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
