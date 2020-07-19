#import "hbGPUImageDirectionalNonMaximumSuppressionFilterh.h"
@implementation hbGPUImageDirectionalNonMaximumSuppressionFilterh
+ (BOOL)sinit:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)aSetupfilterforsize:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)PSettexelwidth:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)MSettexelheight:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)TSetlowerthreshold:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)cSetupperthreshold:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
