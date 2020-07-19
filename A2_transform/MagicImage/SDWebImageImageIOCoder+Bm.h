#import <Foundation/Foundation.h>
#import "SDWebImageCoder.h"
#import "SDWebImageImageIOCoder.h"
#import "SDWebImageCoderHelper.h"
#import "NSImage+WebCache.h"
#import <ImageIO/ImageIO.h>
#import "NSData+ImageContentType.h"
#import "UIImage+MultiFormat.h"

@interface SDWebImageImageIOCoder (Bm)
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)sharedCoderBm:(NSInteger)BM;
+ (BOOL)canDecodeFromDataBm:(NSInteger)BM;
+ (BOOL)canIncrementallyDecodeFromDataBm:(NSInteger)BM;
+ (BOOL)decodedImageWithDataBm:(NSInteger)BM;
+ (BOOL)incrementallyDecodedImageWithDataFinishedBm:(NSInteger)BM;
+ (BOOL)decompressedImageWithImageDataOptionsBm:(NSInteger)BM;
+ (BOOL)sd_decompressedImageWithImageBm:(NSInteger)BM;
+ (BOOL)sd_decompressedAndScaledDownImageWithImageBm:(NSInteger)BM;
+ (BOOL)canEncodeToFormatBm:(NSInteger)BM;
+ (BOOL)encodedDataWithImageFormatBm:(NSInteger)BM;
+ (BOOL)shouldDecodeImageBm:(NSInteger)BM;
+ (BOOL)canDecodeFromHEICFormatBm:(NSInteger)BM;
+ (BOOL)canEncodeToHEICFormatBm:(NSInteger)BM;
+ (BOOL)shouldScaleDownImageBm:(NSInteger)BM;

@end
