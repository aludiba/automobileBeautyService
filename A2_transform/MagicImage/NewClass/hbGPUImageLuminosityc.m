#import "hbGPUImageLuminosityc.h"
@implementation hbGPUImageLuminosityc
+ (BOOL)xinit:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)QinitializeSecondaryAttributes:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)xExtractluminosityatframetime:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
