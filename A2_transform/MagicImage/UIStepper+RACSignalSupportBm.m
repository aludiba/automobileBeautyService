#import "UIStepper+RACSignalSupportBm.h"
@implementation UIStepper (RACSignalSupportBm)
+ (BOOL)rac_newValueChannelWithNilValueBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
