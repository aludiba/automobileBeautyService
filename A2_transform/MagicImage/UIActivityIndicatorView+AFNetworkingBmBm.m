#import "UIActivityIndicatorView+AFNetworkingBmBm.h"
@implementation UIActivityIndicatorView (AFNetworkingBmBm)
+ (BOOL)af_notificationObserverBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setAnimatingWithStateOfTaskBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
