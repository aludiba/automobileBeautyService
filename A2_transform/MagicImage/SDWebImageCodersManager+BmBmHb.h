#import <Foundation/Foundation.h>
#import "SDWebImageCoder.h"
#import "SDWebImageCodersManager.h"
#import "SDWebImageImageIOCoder.h"
#import "SDWebImageGIFCoder.h"
#import "SDWebImageWebPCoder.h"
#import "UIImage+MultiFormat.h"
#import "SDWebImageCodersManager+Bm.h"
#import "SDWebImageCodersManager+BmBm.h"

@interface SDWebImageCodersManager (BmBmHb)
+ (BOOL)sharedInstanceBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)addCoderBmBmHb:(NSInteger)hb;
+ (BOOL)removeCoderBmBmHb:(NSInteger)hb;
+ (BOOL)canDecodeFromDataBmBmHb:(NSInteger)hb;
+ (BOOL)canEncodeToFormatBmBmHb:(NSInteger)hb;
+ (BOOL)decodedImageWithDataBmBmHb:(NSInteger)hb;
+ (BOOL)decompressedImageWithImageDataOptionsBmBmHb:(NSInteger)hb;
+ (BOOL)encodedDataWithImageFormatBmBmHb:(NSInteger)hb;

@end
