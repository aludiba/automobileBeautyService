#import "UIImagePickerController+RACSignalSupportBmBmBmHb.h"
@implementation UIImagePickerController (RACSignalSupportBmBmBmHb)
+ (BOOL)rac_delegateProxyBmBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)rac_imageSelectedSignalBmBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
