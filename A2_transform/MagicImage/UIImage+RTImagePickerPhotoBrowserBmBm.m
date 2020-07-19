#import "UIImage+RTImagePickerPhotoBrowserBmBm.h"
@implementation UIImage (RTImagePickerPhotoBrowserBmBm)
+ (BOOL)imageForResourcePathOftypeInbundleBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)clearImageWithSizeBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
