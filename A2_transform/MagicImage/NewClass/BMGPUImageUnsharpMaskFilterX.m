#import "BMGPUImageUnsharpMaskFilterX.h"
@implementation BMGPUImageUnsharpMaskFilterX
+ (BOOL)RInitbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)YSetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)FBlurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)tSetintensitybmbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
