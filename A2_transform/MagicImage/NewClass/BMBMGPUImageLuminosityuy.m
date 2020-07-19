#import "BMBMGPUImageLuminosityuY.h"
@implementation BMBMGPUImageLuminosityuY
+ (BOOL)DDinit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)RYinitializesecondaryattributes:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)VPextractluminosityatframetime:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
