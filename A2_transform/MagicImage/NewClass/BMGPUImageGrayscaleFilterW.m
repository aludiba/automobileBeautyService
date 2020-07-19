#import "BMGPUImageGrayscaleFilterW.h"
@implementation BMGPUImageGrayscaleFilterW
+ (BOOL)uRendertotexturewithverticesVTexturecoordinates:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)WwantsMonochromeInput:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)GprovidesMonochromeOutput:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)Pinit:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
