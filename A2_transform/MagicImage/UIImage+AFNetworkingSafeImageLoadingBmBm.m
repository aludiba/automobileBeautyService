#import "UIImage+AFNetworkingSafeImageLoadingBmBm.h"
@implementation UIImage (AFNetworkingSafeImageLoadingBmBm)
+ (BOOL)af_safeImageWithDataBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
