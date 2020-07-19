#import "UIButton+_AFNetworkingBmBm.h"
@implementation UIButton (_AFNetworkingBmBm)
+ (BOOL)af_imageDownloadReceiptForStateBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)af_setImageDownloadReceiptForstateBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)af_backgroundImageDownloadReceiptForStateBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)af_setBackgroundImageDownloadReceiptForstateBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
