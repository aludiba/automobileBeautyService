#import "BMCKStillCameraPreviewA.h"
@implementation BMCKStillCameraPreviewA
+ (BOOL)GInitwithframe:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)psetupGesture:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
