#import "SDWebImageCoderHelper+Bm.h"
@implementation SDWebImageCoderHelper (Bm)
+ (BOOL)animatedImageWithFramesBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)framesFromAnimatedImageBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)imageOrientationFromEXIFOrientationBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)exifOrientationFromImageOrientationBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
