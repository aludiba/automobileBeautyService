#import "BMTOCropOverlayViewR.h"
@implementation BMTOCropOverlayViewR
+ (BOOL)DInitwithframebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)RSetupbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)lSetframebm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)uDidmovetosuperviewbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)sLayoutlinesbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)nSetgridhiddenanimatedbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)cSetdisplayhorizontalgridlinesbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)tSetdisplayverticalgridlinesbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)mSetgridhiddenbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)lCreatenewlineviewbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
