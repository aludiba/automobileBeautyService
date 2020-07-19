#import "UIImagePickerController+RACSignalSupportHb.h"
@implementation UIImagePickerController (RACSignalSupportHb)
+ (BOOL)rac_delegateProxyHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)rac_imageSelectedSignalHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
