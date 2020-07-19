#import "hbBMGPUImageLanczosResamplingFilterZy.h"
@implementation hbBMGPUImageLanczosResamplingFilterZy
+ (BOOL)zNinitbmbmhb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)uVsetinputsizewatindexbmbmhb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)eGsetupfilterforsizebmbmhb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)QIrendertotexturewithverticesvtexturecoordinatesbmbmhb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
