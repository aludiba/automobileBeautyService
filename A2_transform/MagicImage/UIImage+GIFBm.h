#import "SDWebImageCompat.h"
#import "UIImage+GIF.h"
#import "SDWebImageGIFCoder.h"
#import "NSImage+WebCache.h"

@interface UIImage (GIFBm)
+ (BOOL)sd_animatedGIFWithDataBm:(NSInteger)BM;
+ (BOOL)isGIFBm:(NSInteger)BM;

@end
