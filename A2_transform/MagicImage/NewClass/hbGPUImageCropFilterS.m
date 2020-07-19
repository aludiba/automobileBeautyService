#import "hbGPUImageCropFilterS.h"
@implementation hbGPUImageCropFilterS
+ (BOOL)uInitwithcropregionbmbm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)vInitbmbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)cSetinputsizeatindexbmbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)gCalculatecroptexturecoordinatesbmbm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)mNewframereadyattimeatindexbmbm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)FSetcropregionbmbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)LSetinputrotationatindexbmbm:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
