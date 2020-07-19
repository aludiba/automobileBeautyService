#import "BMQMCameraFlashSuspensionViewE.h"
@implementation BMQMCameraFlashSuspensionViewE
+ (BOOL)PflashSuspensionView:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)lcollectionViewForFlowLayout:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
