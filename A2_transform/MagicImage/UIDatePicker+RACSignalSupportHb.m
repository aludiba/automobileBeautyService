#import "UIDatePicker+RACSignalSupportHb.h"
@implementation UIDatePicker (RACSignalSupportHb)
+ (BOOL)rac_newDateChannelWithNilValueHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
