#import "SDWebImageCompat.h"
#import <Cocoa/Cocoa.h>
#import "NSImage+WebCache.h"

@interface NSImage (WebCacheBm)
+ (BOOL)CGImageBm:(NSInteger)BM;
+ (BOOL)imagesBm:(NSInteger)BM;
+ (BOOL)isGIFBm:(NSInteger)BM;

@end
