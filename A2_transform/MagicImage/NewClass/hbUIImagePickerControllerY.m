#import "hbUIImagePickerControllerY.h"
@implementation hbUIImagePickerControllerY
+ (BOOL)Grac_delegateProxy:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)Qrac_imageSelectedSignal:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
