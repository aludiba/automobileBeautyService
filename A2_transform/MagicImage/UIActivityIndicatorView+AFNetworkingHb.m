#import "UIActivityIndicatorView+AFNetworkingHb.h"
@implementation UIActivityIndicatorView (AFNetworkingHb)
+ (BOOL)af_notificationObserverHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setAnimatingWithStateOfTaskHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
