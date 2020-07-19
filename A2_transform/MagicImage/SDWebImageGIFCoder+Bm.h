#import <Foundation/Foundation.h>
#import "SDWebImageCoder.h"
#import "SDWebImageGIFCoder.h"
#import "NSImage+WebCache.h"
#import <ImageIO/ImageIO.h>
#import "NSData+ImageContentType.h"
#import "UIImage+MultiFormat.h"
#import "SDWebImageCoderHelper.h"
#import "SDAnimatedImageRep.h"

@interface SDWebImageGIFCoder (Bm)
+ (BOOL)sharedCoderBm:(NSInteger)BM;
+ (BOOL)canDecodeFromDataBm:(NSInteger)BM;
+ (BOOL)decodedImageWithDataBm:(NSInteger)BM;
+ (BOOL)sd_frameDurationAtIndexSourceBm:(NSInteger)BM;
+ (BOOL)decompressedImageWithImageDataOptionsBm:(NSInteger)BM;
+ (BOOL)canEncodeToFormatBm:(NSInteger)BM;
+ (BOOL)encodedDataWithImageFormatBm:(NSInteger)BM;

@end
