#import "BMGPUImageZoomBlurFilterJ.h"
@implementation BMGPUImageZoomBlurFilterJ
+ (BOOL)Rinit:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)WSetinputrotationOAtindex:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)LSetblursize:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)cSetblurcenter:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
