#import "UIDatePicker+RACSignalSupportBmBm.h"
@implementation UIDatePicker (RACSignalSupportBmBm)
+ (BOOL)rac_newDateChannelWithNilValueBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
