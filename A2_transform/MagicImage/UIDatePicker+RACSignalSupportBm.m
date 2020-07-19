#import "UIDatePicker+RACSignalSupportBm.h"
@implementation UIDatePicker (RACSignalSupportBm)
+ (BOOL)rac_newDateChannelWithNilValueBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
