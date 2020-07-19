#import "hbBMTOCropScrollViewMi.h"
@implementation hbBMTOCropScrollViewMi
+ (BOOL)iGtouchesbeganwwitheventbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)XRtouchesendedqwitheventbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)CHtouchescancellednwitheventbm:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
