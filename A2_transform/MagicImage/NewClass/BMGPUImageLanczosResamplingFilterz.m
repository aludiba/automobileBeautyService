#import "BMGPUImageLanczosResamplingFilterZ.h"
@implementation BMGPUImageLanczosResamplingFilterZ
+ (BOOL)ninit:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)VSetinputsizeWAtindex:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)gSetupfilterforsize:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)IRendertotexturewithverticesvTexturecoordinates:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
