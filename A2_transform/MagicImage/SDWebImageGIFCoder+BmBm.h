#import <Foundation/Foundation.h>
#import "SDWebImageCoder.h"
#import "SDWebImageGIFCoder.h"
#import "NSImage+WebCache.h"
#import <ImageIO/ImageIO.h>
#import "NSData+ImageContentType.h"
#import "UIImage+MultiFormat.h"
#import "SDWebImageCoderHelper.h"
#import "SDAnimatedImageRep.h"
#import "SDWebImageGIFCoder+Bm.h"

@interface SDWebImageGIFCoder (BmBm)
+ (BOOL)sharedCoderBmBm:(NSInteger)BM;
+ (BOOL)canDecodeFromDataBmBm:(NSInteger)BM;
+ (BOOL)decodedImageWithDataBmBm:(NSInteger)BM;
+ (BOOL)sd_frameDurationAtIndexSourceBmBm:(NSInteger)BM;
+ (BOOL)decompressedImageWithImageDataOptionsBmBm:(NSInteger)BM;
+ (BOOL)canEncodeToFormatBmBm:(NSInteger)BM;
+ (BOOL)encodedDataWithImageFormatBmBm:(NSInteger)BM;

@end
