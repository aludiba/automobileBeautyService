#import "UIImageView+_AFNetworkingHb.h"
@implementation UIImageView (_AFNetworkingHb)
+ (BOOL)af_activeImageDownloadReceiptHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)af_setActiveImageDownloadReceiptHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
