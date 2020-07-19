#import "SDWebImageGIFCoder+Bm.h"
@implementation SDWebImageGIFCoder (Bm)
+ (BOOL)sharedCoderBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)canDecodeFromDataBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)decodedImageWithDataBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)sd_frameDurationAtIndexSourceBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)decompressedImageWithImageDataOptionsBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)canEncodeToFormatBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)encodedDataWithImageFormatBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
