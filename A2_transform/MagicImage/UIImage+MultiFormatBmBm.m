#import "UIImage+MultiFormatBmBm.h"
@implementation UIImage (MultiFormatBmBm)
+ (BOOL)sd_imageLoopCountBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setSd_imageLoopCountBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sd_imageLoopCountBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setSd_imageLoopCountBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sd_imageFormatBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setSd_imageFormatBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sd_imageWithDataBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)sd_imageDataBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)sd_imageDataAsFormatBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
