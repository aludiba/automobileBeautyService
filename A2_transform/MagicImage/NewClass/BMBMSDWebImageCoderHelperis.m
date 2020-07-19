#import "BMBMSDWebImageCoderHelperis.h"
@implementation BMBMSDWebImageCoderHelperis
+ (BOOL)oNanimatedimagewithframesbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)SDframesfromanimatedimagebm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)uAimageorientationfromexiforientationbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)tTexiforientationfromimageorientationbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
