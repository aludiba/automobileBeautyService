#import "UIImagePickerController+RACSignalSupportHbHb.h"
@implementation UIImagePickerController (RACSignalSupportHbHb)
+ (BOOL)rac_delegateProxyHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)rac_imageSelectedSignalHbHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
