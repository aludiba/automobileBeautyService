#import "BMBMGPUImageGrayscaleFilterWs.h"
@implementation BMBMGPUImageGrayscaleFilterWs
+ (BOOL)oUrendertotexturewithverticesvtexturecoordinates:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)jWwantsmonochromeinput:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)tGprovidesmonochromeoutput:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)yPinit:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
