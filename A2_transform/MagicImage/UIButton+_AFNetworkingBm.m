#import "UIButton+_AFNetworkingBm.h"
@implementation UIButton (_AFNetworkingBm)
+ (BOOL)af_imageDownloadReceiptForStateBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)af_setImageDownloadReceiptForstateBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)af_backgroundImageDownloadReceiptForStateBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)af_setBackgroundImageDownloadReceiptForstateBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
