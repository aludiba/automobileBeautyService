#import "hbGPUImageLineGeneratoro.h"
@implementation hbGPUImageLineGeneratoro
+ (BOOL)PInithb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)DDeallochb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)cGeneratelinecoordinateshb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)pRenderlinesfromarraycountframetimehb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)xRendertotexturewithverticestexturecoordinateshb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)LSetlinewidthhb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)TSetlinecolorredgreenbluehb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
