#import "UIImagePickerController+RACSignalSupportBmBmBm.h"
@implementation UIImagePickerController (RACSignalSupportBmBmBm)
+ (BOOL)rac_delegateProxyBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)rac_imageSelectedSignalBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
