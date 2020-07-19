#import "hbUIImagePickerControllerL.h"
@implementation hbUIImagePickerControllerL
+ (BOOL)Hrac_delegateProxy:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)Irac_imageSelectedSignal:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
