#import "SDWebImageCoderHelper+BmHb.h"
@implementation SDWebImageCoderHelper (BmHb)
+ (BOOL)animatedImageWithFramesBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)framesFromAnimatedImageBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)imageOrientationFromEXIFOrientationBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)exifOrientationFromImageOrientationBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
