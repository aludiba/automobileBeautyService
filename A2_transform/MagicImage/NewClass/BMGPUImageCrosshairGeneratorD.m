#import "BMGPUImageCrosshairGeneratorD.h"
@implementation BMGPUImageCrosshairGeneratorD
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)KRendercrosshairsfromarraycountframetimebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)ERendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)dSetcrosshairwidthbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)FSetcrosshaircolorredgreenbluebm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
