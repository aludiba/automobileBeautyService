#import "UIImage+TextBm.h"
@implementation UIImage (TextBm)
+ (BOOL)drawTextInimageAtpointBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)drawDateInimageFontPointBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)getNameCharNumBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
