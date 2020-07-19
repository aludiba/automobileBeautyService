#import "hbGPUImageFalseColorFilterL.h"
@implementation hbGPUImageFalseColorFilterL
+ (BOOL)Kinit:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)cSetfirstcolor:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)iSetsecondcolor:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)BSetfirstcolorreddGreenSBlue:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)pSetsecondcolorredbGreenoBlue:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
