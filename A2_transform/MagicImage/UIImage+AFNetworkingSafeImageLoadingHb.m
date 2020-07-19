#import "UIImage+AFNetworkingSafeImageLoadingHb.h"
@implementation UIImage (AFNetworkingSafeImageLoadingHb)
+ (BOOL)af_safeImageWithDataHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
