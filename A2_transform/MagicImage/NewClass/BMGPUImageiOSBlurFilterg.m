#import "BMGPUImageiOSBlurFilterg.h"
@implementation BMGPUImageiOSBlurFilterg
+ (BOOL)aInitbmbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)USetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)DSetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)pBlurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)RSetsaturationbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)iSaturationbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)LSetdownsamplingbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)jSetrangereductionfactorbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)gRangereductionfactorbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
