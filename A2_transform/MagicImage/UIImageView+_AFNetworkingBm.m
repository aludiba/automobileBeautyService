#import "UIImageView+_AFNetworkingBm.h"
@implementation UIImageView (_AFNetworkingBm)
+ (BOOL)af_activeImageDownloadReceiptBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)af_setActiveImageDownloadReceiptBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
