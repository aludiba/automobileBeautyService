#import "UIImagePickerController+RACSignalSupportBmBm.h"
@implementation UIImagePickerController (RACSignalSupportBmBm)
+ (BOOL)rac_delegateProxyBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)rac_imageSelectedSignalBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
