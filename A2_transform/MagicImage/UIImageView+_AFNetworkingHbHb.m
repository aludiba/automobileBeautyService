#import "UIImageView+_AFNetworkingHbHb.h"
@implementation UIImageView (_AFNetworkingHbHb)
+ (BOOL)af_activeImageDownloadReceiptHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)af_setActiveImageDownloadReceiptHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
