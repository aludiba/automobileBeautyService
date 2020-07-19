#import "BMBMGPUImageHarrisCornerDetectionFilterJs.h"
@implementation BMBMGPUImageHarrisCornerDetectionFilterJs
+ (BOOL)DUinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)NUinitwithcornerdetectionfragmentshader:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)fAdealloc:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)OXextractcornerlocationsfromimageatframetime:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)CDwantsmonochromeinput:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)pRsetblurradiusinpixels:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)WPblurradiusinpixels:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)hHsetsensitivity:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)uLsetthreshold:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)oKthreshold:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
