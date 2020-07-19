#import <Foundation/Foundation.h>
#import "SDWebImageCoder.h"
#import "SDWebImageCodersManager.h"
#import "SDWebImageImageIOCoder.h"
#import "SDWebImageGIFCoder.h"
#import "SDWebImageWebPCoder.h"
#import "UIImage+MultiFormat.h"

@interface SDWebImageCodersManager (Bm)
+ (BOOL)sharedInstanceBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)addCoderBm:(NSInteger)BM;
+ (BOOL)removeCoderBm:(NSInteger)BM;
+ (BOOL)canDecodeFromDataBm:(NSInteger)BM;
+ (BOOL)canEncodeToFormatBm:(NSInteger)BM;
+ (BOOL)decodedImageWithDataBm:(NSInteger)BM;
+ (BOOL)decompressedImageWithImageDataOptionsBm:(NSInteger)BM;
+ (BOOL)encodedDataWithImageFormatBm:(NSInteger)BM;

@end
