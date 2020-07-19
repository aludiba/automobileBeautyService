#import "BMGPUImageLanczosResamplingFilterZ+BmBmHbHb.h"
@implementation BMGPUImageLanczosResamplingFilterZ (BmBmHbHb)
+ (BOOL)ninitBmBmHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)VSetinputsizeWAtindexBmBmHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)gSetupfilterforsizeBmBmHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)IRendertotexturewithverticesvTexturecoordinatesBmBmHbHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
