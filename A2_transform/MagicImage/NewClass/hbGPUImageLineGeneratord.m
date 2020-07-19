#import "hbGPUImageLineGeneratord.h"
@implementation hbGPUImageLineGeneratord
+ (BOOL)jInithb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)CDeallochb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)uGeneratelinecoordinateshb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)pRenderlinesfromarraycountframetimehb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)jRendertotexturewithverticestexturecoordinateshb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)RSetlinewidthhb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)wSetlinecolorredgreenbluehb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
