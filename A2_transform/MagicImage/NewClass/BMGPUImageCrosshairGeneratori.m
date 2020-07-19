#import "BMGPUImageCrosshairGeneratori.h"
@implementation BMGPUImageCrosshairGeneratori
+ (BOOL)XInitbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)cRendercrosshairsfromarraycountframetimebmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)qRendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)xSetcrosshairwidthbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)HSetcrosshaircolorredgreenbluebmbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
