#import "UIRefreshControl+AFNetworkingBmBmHb.h"
@implementation UIRefreshControl (AFNetworkingBmBmHb)
+ (BOOL)af_notificationObserverBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setRefreshingWithStateOfTaskBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
