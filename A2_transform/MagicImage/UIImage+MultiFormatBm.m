#import "UIImage+MultiFormatBm.h"
@implementation UIImage (MultiFormatBm)
+ (BOOL)sd_imageLoopCountBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setSd_imageLoopCountBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sd_imageLoopCountBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setSd_imageLoopCountBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)sd_imageFormatBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setSd_imageFormatBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sd_imageWithDataBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)sd_imageDataBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sd_imageDataAsFormatBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
