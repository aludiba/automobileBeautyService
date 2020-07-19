#import "BMQMCameraFlashSuspensionViewM.h"
@implementation BMQMCameraFlashSuspensionViewM
+ (BOOL)JflashSuspensionView:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ccollectionViewForFlowLayout:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
