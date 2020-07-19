#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"
#import "NSData+ImageContentType.h"
#import <CoreServices/CoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface NSData (ImageContentTypeBm)
+ (BOOL)sd_imageFormatForImageDataBm:(NSInteger)BM;
+ (BOOL)sd_UTTypeFromSDImageFormatBm:(NSInteger)BM;
+ (BOOL)sd_imageFormatFromUTTypeBm:(NSInteger)BM;

@end
