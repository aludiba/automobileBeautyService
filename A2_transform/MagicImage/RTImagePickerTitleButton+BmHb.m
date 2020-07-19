#import "RTImagePickerTitleButton+BmHb.h"
@implementation RTImagePickerTitleButton (BmHb)
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)rt_setTitleArrowappearanceBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
