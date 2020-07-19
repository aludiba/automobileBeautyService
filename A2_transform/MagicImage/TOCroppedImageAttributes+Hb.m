#import "TOCroppedImageAttributes+Hb.h"
@implementation TOCroppedImageAttributes (Hb)
+ (BOOL)initWithCroppedFrameAngleOriginalimagesizeHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
