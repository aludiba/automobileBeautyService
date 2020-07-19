#import "BMUIImagePickerControllern.h"
@implementation BMUIImagePickerControllern
+ (BOOL)NRac_Delegateproxybm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)eRac_Imageselectedsignalbm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
