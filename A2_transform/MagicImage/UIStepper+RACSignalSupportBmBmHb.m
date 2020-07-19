#import "UIStepper+RACSignalSupportBmBmHb.h"
@implementation UIStepper (RACSignalSupportBmBmHb)
+ (BOOL)rac_newValueChannelWithNilValueBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
