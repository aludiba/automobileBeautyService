#import "hbCKStillCameraPreviewW.h"
@implementation hbCKStillCameraPreviewW
+ (BOOL)mInitwithframebmhb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)mSetupgesturebmhb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
