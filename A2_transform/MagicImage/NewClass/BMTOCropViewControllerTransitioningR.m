#import "BMTOCropViewControllerTransitioningR.h"
@implementation BMTOCropViewControllerTransitioningR
+ (BOOL)QTransitiondurationbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)KAnimatetransitionbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)CResetbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
