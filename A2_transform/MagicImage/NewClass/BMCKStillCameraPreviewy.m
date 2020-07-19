#import "BMCKStillCameraPreviewy.h"
@implementation BMCKStillCameraPreviewy
+ (BOOL)FInitwithframebm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)rSetupgesturebm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
