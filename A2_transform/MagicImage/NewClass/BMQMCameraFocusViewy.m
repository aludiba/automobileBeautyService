#import "BMQMCameraFocusViewy.h"
@implementation BMQMCameraFocusViewy
+ (BOOL)NfocusView:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ZInitwithframe:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)prender:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)MSetiso:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)SFoucusatpoint:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)LhideFoucusView:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)eluminanceView:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
