#import "hbGPUImageLuminosityM.h"
@implementation hbGPUImageLuminosityM
+ (BOOL)Jinit:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)ainitializeSecondaryAttributes:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)yExtractluminosityatframetime:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
