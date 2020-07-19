#import "UIImage+AFNetworkingSafeImageLoadingHbHb.h"
@implementation UIImage (AFNetworkingSafeImageLoadingHbHb)
+ (BOOL)af_safeImageWithDataHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
