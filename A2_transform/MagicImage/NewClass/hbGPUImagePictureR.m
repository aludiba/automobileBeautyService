#import "hbGPUImagePictureR.h"
@implementation hbGPUImagePictureR
+ (BOOL)cReplacetexturewithsubimage:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)wReplacetexturewithsubcgimage:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)UReplacetexturewithsubimageUInrect:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)mReplacetexturewithsubcgimageoInrect:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
