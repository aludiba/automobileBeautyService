#import "hbSDWebImageCoderHelperd.h"
@implementation hbSDWebImageCoderHelperd
+ (BOOL)xAnimatedimagewithframesbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)uFramesfromanimatedimagebm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)vImageorientationfromexiforientationbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)AExiforientationfromimageorientationbm:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
