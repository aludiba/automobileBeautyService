#import "BMUIImagePickerControllerE+Bm.h"
@implementation BMUIImagePickerControllerE (Bm)
+ (BOOL)Jrac_delegateProxyBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)Yrac_imageSelectedSignalBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
