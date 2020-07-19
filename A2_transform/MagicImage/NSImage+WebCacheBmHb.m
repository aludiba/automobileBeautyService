#import "NSImage+WebCacheBmHb.h"
@implementation NSImage (WebCacheBmHb)
+ (BOOL)CGImageBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)imagesBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)isGIFBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
