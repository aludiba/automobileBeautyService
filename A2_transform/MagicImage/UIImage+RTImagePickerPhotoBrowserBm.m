#import "UIImage+RTImagePickerPhotoBrowserBm.h"
@implementation UIImage (RTImagePickerPhotoBrowserBm)
+ (BOOL)imageForResourcePathOftypeInbundleBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)clearImageWithSizeBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
