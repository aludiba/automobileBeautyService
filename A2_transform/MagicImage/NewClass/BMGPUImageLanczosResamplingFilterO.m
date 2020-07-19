#import "BMGPUImageLanczosResamplingFilterO.h"
@implementation BMGPUImageLanczosResamplingFilterO
+ (BOOL)hInitbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)MSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)ySetupfilterforsizebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)vRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
