#import "BMUIImagePickerControllerS.h"
@implementation BMUIImagePickerControllerS
+ (BOOL)srac_delegateProxy:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)Frac_imageSelectedSignal:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
