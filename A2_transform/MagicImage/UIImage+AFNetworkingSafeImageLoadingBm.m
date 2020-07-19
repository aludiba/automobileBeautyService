#import "UIImage+AFNetworkingSafeImageLoadingBm.h"
@implementation UIImage (AFNetworkingSafeImageLoadingBm)
+ (BOOL)af_safeImageWithDataBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
