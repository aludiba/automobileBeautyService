#import "NSData+ImageContentTypeBm.h"
@implementation NSData (ImageContentTypeBm)
+ (BOOL)sd_imageFormatForImageDataBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sd_UTTypeFromSDImageFormatBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sd_imageFormatFromUTTypeBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
