#import "hbCKStillCameraPreviewU.h"
@implementation hbCKStillCameraPreviewU
+ (BOOL)WInitwithframebm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)MSetupgesturebm:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
