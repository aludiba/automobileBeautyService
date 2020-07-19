#import "BMGPUImageTiltShiftFilterF.h"
@implementation BMGPUImageTiltShiftFilterF
+ (BOOL)tInitbmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)eSetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)NBlurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)YSettopfocuslevelbmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ySetbottomfocuslevelbmbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)nSetfocusfalloffratebmbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
