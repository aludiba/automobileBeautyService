#import "BMGPUImageHarrisCornerDetectionFilterJ.h"
@implementation BMGPUImageHarrisCornerDetectionFilterJ
+ (BOOL)uinit:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)uInitwithcornerdetectionfragmentshader:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)Adealloc:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)XExtractcornerlocationsfromimageatframetime:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)DwantsMonochromeInput:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)RSetblurradiusinpixels:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)pblurRadiusInPixels:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)HSetsensitivity:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)LSetthreshold:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)kthreshold:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
