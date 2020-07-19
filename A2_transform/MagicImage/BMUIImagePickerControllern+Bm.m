#import "BMUIImagePickerControllern+Bm.h"
@implementation BMUIImagePickerControllern (Bm)
+ (BOOL)NRac_DelegateproxybmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)eRac_ImageselectedsignalbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
