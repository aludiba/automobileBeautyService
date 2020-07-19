#import "BMGPUImageGrayscaleFilterk.h"
@implementation BMGPUImageGrayscaleFilterk
+ (BOOL)IRendertotexturewithverticeskTexturecoordinates:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)XwantsMonochromeInput:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)HprovidesMonochromeOutput:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)Jinit:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
