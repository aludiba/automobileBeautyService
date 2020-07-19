#import "SDWebImageImageIOCoder+BmBm.h"
@implementation SDWebImageImageIOCoder (BmBm)
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)sharedCoderBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)canDecodeFromDataBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)canIncrementallyDecodeFromDataBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)decodedImageWithDataBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)incrementallyDecodedImageWithDataFinishedBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)decompressedImageWithImageDataOptionsBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sd_decompressedImageWithImageBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)sd_decompressedAndScaledDownImageWithImageBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)canEncodeToFormatBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)encodedDataWithImageFormatBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)shouldDecodeImageBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)canDecodeFromHEICFormatBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)canEncodeToHEICFormatBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)shouldScaleDownImageBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
