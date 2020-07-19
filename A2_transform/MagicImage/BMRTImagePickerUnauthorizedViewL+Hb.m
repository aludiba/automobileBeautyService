#import "BMRTImagePickerUnauthorizedViewL+Hb.h"
@implementation BMRTImagePickerUnauthorizedViewL (Hb)
+ (BOOL)gInitwithframeHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)hPermissionbuttonpressedHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
