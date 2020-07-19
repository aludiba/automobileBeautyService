#import "UIImage+TextBmBm.h"
@implementation UIImage (TextBmBm)
+ (BOOL)drawTextInimageAtpointBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)drawDateInimageFontPointBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)getNameCharNumBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
