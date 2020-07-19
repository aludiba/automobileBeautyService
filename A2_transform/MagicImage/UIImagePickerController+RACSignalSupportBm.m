#import "UIImagePickerController+RACSignalSupportBm.h"
@implementation UIImagePickerController (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)rac_imageSelectedSignalBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
