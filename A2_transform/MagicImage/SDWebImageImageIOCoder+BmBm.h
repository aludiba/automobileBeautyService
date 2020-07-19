#import <Foundation/Foundation.h>
#import "SDWebImageCoder.h"
#import "SDWebImageImageIOCoder.h"
#import "SDWebImageCoderHelper.h"
#import "NSImage+WebCache.h"
#import <ImageIO/ImageIO.h>
#import "NSData+ImageContentType.h"
#import "UIImage+MultiFormat.h"
#import "SDWebImageImageIOCoder+Bm.h"

@interface SDWebImageImageIOCoder (BmBm)
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)sharedCoderBmBm:(NSInteger)BM;
+ (BOOL)canDecodeFromDataBmBm:(NSInteger)BM;
+ (BOOL)canIncrementallyDecodeFromDataBmBm:(NSInteger)BM;
+ (BOOL)decodedImageWithDataBmBm:(NSInteger)BM;
+ (BOOL)incrementallyDecodedImageWithDataFinishedBmBm:(NSInteger)BM;
+ (BOOL)decompressedImageWithImageDataOptionsBmBm:(NSInteger)BM;
+ (BOOL)sd_decompressedImageWithImageBmBm:(NSInteger)BM;
+ (BOOL)sd_decompressedAndScaledDownImageWithImageBmBm:(NSInteger)BM;
+ (BOOL)canEncodeToFormatBmBm:(NSInteger)BM;
+ (BOOL)encodedDataWithImageFormatBmBm:(NSInteger)BM;
+ (BOOL)shouldDecodeImageBmBm:(NSInteger)BM;
+ (BOOL)canDecodeFromHEICFormatBmBm:(NSInteger)BM;
+ (BOOL)canEncodeToHEICFormatBmBm:(NSInteger)BM;
+ (BOOL)shouldScaleDownImageBmBm:(NSInteger)BM;

@end
