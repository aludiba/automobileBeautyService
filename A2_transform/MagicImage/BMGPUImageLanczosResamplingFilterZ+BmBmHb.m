#import "BMGPUImageLanczosResamplingFilterZ+BmBmHb.h"
@implementation BMGPUImageLanczosResamplingFilterZ (BmBmHb)
+ (BOOL)ninitBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)VSetinputsizeWAtindexBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)gSetupfilterforsizeBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)IRendertotexturewithverticesvTexturecoordinatesBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
