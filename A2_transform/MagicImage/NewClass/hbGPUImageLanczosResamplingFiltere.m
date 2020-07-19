#import "hbGPUImageLanczosResamplingFiltere.h"
@implementation hbGPUImageLanczosResamplingFiltere
+ (BOOL)pinit:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)ESetinputsizeRAtindex:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)VSetupfilterforsize:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)nRendertotexturewithverticesWTexturecoordinates:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
