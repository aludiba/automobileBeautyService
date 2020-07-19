#import "UIStepper+RACSignalSupportBmBm.h"
@implementation UIStepper (RACSignalSupportBmBm)
+ (BOOL)rac_newValueChannelWithNilValueBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
