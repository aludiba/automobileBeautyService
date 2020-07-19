#import "RTImagePickerTitleButton+BmBm.h"
@implementation RTImagePickerTitleButton (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)rt_setTitleArrowappearanceBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
