#import "NSData+ImageContentTypeBmBm.h"
@implementation NSData (ImageContentTypeBmBm)
+ (BOOL)sd_imageFormatForImageDataBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)sd_UTTypeFromSDImageFormatBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)sd_imageFormatFromUTTypeBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
