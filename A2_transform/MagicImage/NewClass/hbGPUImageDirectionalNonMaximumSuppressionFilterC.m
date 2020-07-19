#import "hbGPUImageDirectionalNonMaximumSuppressionFilterC.h"
@implementation hbGPUImageDirectionalNonMaximumSuppressionFilterC
+ (BOOL)Minit:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)zSetupfilterforsize:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)FSettexelwidth:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)PSettexelheight:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)PSetlowerthreshold:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)QSetupperthreshold:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
