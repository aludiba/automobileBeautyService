#import "hbGPUImageChromaKeyFilterD.h"
@implementation hbGPUImageChromaKeyFilterD
+ (BOOL)XInithb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)ISetcolortoreplaceredgreenbluehb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)ZSetthresholdsensitivityhb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)HSetsmoothinghb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
