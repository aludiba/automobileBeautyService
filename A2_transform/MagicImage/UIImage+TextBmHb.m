#import "UIImage+TextBmHb.h"
@implementation UIImage (TextBmHb)
+ (BOOL)drawTextInimageAtpointBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)drawDateInimageFontPointBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)getNameCharNumBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
