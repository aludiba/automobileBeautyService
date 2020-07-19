#import "UIImage+RTImagePickerPhotoBrowserBmHb.h"
@implementation UIImage (RTImagePickerPhotoBrowserBmHb)
+ (BOOL)imageForResourcePathOftypeInbundleBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)clearImageWithSizeBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
