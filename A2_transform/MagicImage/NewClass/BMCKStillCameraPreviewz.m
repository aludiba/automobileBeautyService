#import "BMCKStillCameraPreviewz.h"
@implementation BMCKStillCameraPreviewz
+ (BOOL)dInitwithframe:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)ssetupGesture:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
