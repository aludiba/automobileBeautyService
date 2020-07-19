#import "CKStillCameraPreview+BmBm.h"
@implementation CKStillCameraPreview (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setupGestureBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
