#import "BMSDWebImageCoderHelperi.h"
@implementation BMSDWebImageCoderHelperi
+ (BOOL)nAnimatedimagewithframesbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)DFramesfromanimatedimagebm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)aImageorientationfromexiforientationbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)tExiforientationfromimageorientationbm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
