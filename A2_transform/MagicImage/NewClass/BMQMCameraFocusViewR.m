#import "BMQMCameraFocusViewR.h"
@implementation BMQMCameraFocusViewR
+ (BOOL)afocusView:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mInitwithframe:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)Irender:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)ISetiso:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)bFoucusatpoint:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)qhideFoucusView:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)XluminanceView:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
