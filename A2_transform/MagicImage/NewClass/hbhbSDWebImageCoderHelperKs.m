#import "hbhbSDWebImageCoderHelperKs.h"
@implementation hbhbSDWebImageCoderHelperKs
+ (BOOL)SPanimatedimagewithframesbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)bGframesfromanimatedimagebm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)YVimageorientationfromexiforientationbm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)NFexiforientationfromimageorientationbm:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
