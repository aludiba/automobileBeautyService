#import "SDWebImageCompat.h"
#import <Cocoa/Cocoa.h>
#import "NSImage+WebCache.h"
#import "NSImage+WebCacheBm.h"

@interface NSImage (WebCacheBmHb)
+ (BOOL)CGImageBmHb:(NSInteger)hb;
+ (BOOL)imagesBmHb:(NSInteger)hb;
+ (BOOL)isGIFBmHb:(NSInteger)hb;

@end
