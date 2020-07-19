#import "SDWebImageImageIOCoder+Bm.h"
@implementation SDWebImageImageIOCoder (Bm)
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sharedCoderBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)canDecodeFromDataBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)canIncrementallyDecodeFromDataBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)decodedImageWithDataBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)incrementallyDecodedImageWithDataFinishedBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)decompressedImageWithImageDataOptionsBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)sd_decompressedImageWithImageBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)sd_decompressedAndScaledDownImageWithImageBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)canEncodeToFormatBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)encodedDataWithImageFormatBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)shouldDecodeImageBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)canDecodeFromHEICFormatBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)canEncodeToHEICFormatBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)shouldScaleDownImageBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
