#import "BMQMCameraFocusViewy+Bm.h"
@implementation BMQMCameraFocusViewy (Bm)
+ (BOOL)NfocusViewBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)ZInitwithframeBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)prenderBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)MSetisoBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)SFoucusatpointBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)LhideFoucusViewBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)eluminanceViewBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
