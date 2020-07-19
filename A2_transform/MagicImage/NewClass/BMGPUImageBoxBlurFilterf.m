#import "BMGPUImageBoxBlurFilterf.h"
@implementation BMGPUImageBoxBlurFilterf
+ (BOOL)aVertexshaderforoptimizedblurofradiussigmabmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)TFragmentshaderforoptimizedblurofradiussigmabmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)BSetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)bInitbmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)TSetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
