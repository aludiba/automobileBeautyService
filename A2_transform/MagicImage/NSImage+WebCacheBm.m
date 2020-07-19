#import "NSImage+WebCacheBm.h"
@implementation NSImage (WebCacheBm)
+ (BOOL)CGImageBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)imagesBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)isGIFBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
