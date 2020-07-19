#import "UIStepper+RACSignalSupportBmBmBm.h"
@implementation UIStepper (RACSignalSupportBmBmBm)
+ (BOOL)rac_newValueChannelWithNilValueBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
