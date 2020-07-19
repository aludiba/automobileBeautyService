#import "UIImage+ColorBm.h"
@implementation UIImage (ColorBm)
+ (BOOL)imageWithColorBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)colorAtPixelBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)convertToGrayImageBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
