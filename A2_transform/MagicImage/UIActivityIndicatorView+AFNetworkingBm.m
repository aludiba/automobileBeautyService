#import "UIActivityIndicatorView+AFNetworkingBm.h"
@implementation UIActivityIndicatorView (AFNetworkingBm)
+ (BOOL)af_notificationObserverBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setAnimatingWithStateOfTaskBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
