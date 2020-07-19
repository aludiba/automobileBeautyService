#import "BMQMCameraFocusViewf.h"
@implementation BMQMCameraFocusViewf
+ (BOOL)qFocusviewbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)oInitwithframebm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)HRenderbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)wSetisobm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)wFoucusatpointbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)oHidefoucusviewbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)VLuminanceviewbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
