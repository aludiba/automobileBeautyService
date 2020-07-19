#import "BMUIImagePickerControllerZ.h"
@implementation BMUIImagePickerControllerZ
+ (BOOL)dRac_Delegateproxybm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)HRac_Imageselectedsignalbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
