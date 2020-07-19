#import "BMCKStillCameraPreviewz+Bm.h"
@implementation BMCKStillCameraPreviewz (Bm)
+ (BOOL)dInitwithframeBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)ssetupGestureBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
