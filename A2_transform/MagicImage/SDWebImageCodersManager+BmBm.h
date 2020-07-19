#import <Foundation/Foundation.h>
#import "SDWebImageCoder.h"
#import "SDWebImageCodersManager.h"
#import "SDWebImageImageIOCoder.h"
#import "SDWebImageGIFCoder.h"
#import "SDWebImageWebPCoder.h"
#import "UIImage+MultiFormat.h"
#import "SDWebImageCodersManager+Bm.h"

@interface SDWebImageCodersManager (BmBm)
+ (BOOL)sharedInstanceBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)addCoderBmBm:(NSInteger)BM;
+ (BOOL)removeCoderBmBm:(NSInteger)BM;
+ (BOOL)canDecodeFromDataBmBm:(NSInteger)BM;
+ (BOOL)canEncodeToFormatBmBm:(NSInteger)BM;
+ (BOOL)decodedImageWithDataBmBm:(NSInteger)BM;
+ (BOOL)decompressedImageWithImageDataOptionsBmBm:(NSInteger)BM;
+ (BOOL)encodedDataWithImageFormatBmBm:(NSInteger)BM;

@end
