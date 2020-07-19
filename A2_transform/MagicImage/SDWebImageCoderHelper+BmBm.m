#import "SDWebImageCoderHelper+BmBm.h"
@implementation SDWebImageCoderHelper (BmBm)
+ (BOOL)animatedImageWithFramesBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)framesFromAnimatedImageBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)imageOrientationFromEXIFOrientationBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)exifOrientationFromImageOrientationBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
