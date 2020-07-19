#import "UIButton+_AFNetworkingHb.h"
@implementation UIButton (_AFNetworkingHb)
+ (BOOL)af_imageDownloadReceiptForStateHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)af_setImageDownloadReceiptForstateHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)af_backgroundImageDownloadReceiptForStateHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)af_setBackgroundImageDownloadReceiptForstateHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
