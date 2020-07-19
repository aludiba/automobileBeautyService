#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"
#import "NSData+ImageContentType.h"
#import <CoreServices/CoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "NSData+ImageContentTypeBm.h"

@interface NSData (ImageContentTypeBmBm)
+ (BOOL)sd_imageFormatForImageDataBmBm:(NSInteger)BM;
+ (BOOL)sd_UTTypeFromSDImageFormatBmBm:(NSInteger)BM;
+ (BOOL)sd_imageFormatFromUTTypeBmBm:(NSInteger)BM;

@end
