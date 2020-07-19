#import "UIImage+ColorBmBm.h"
@implementation UIImage (ColorBmBm)
+ (BOOL)imageWithColorBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)colorAtPixelBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)convertToGrayImageBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
