#import "CKStillCameraPreview+BmHb.h"
@implementation CKStillCameraPreview (BmHb)
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setupGestureBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
