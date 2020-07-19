#import "UIImage+MultiFormatBmHb.h"
@implementation UIImage (MultiFormatBmHb)
+ (BOOL)sd_imageLoopCountBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setSd_imageLoopCountBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)sd_imageLoopCountBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setSd_imageLoopCountBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)sd_imageFormatBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setSd_imageFormatBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)sd_imageWithDataBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)sd_imageDataBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)sd_imageDataAsFormatBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
