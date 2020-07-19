#import "UIImageView+_AFNetworkingBmBm.h"
@implementation UIImageView (_AFNetworkingBmBm)
+ (BOOL)af_activeImageDownloadReceiptBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)af_setActiveImageDownloadReceiptBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
