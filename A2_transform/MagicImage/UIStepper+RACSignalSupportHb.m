#import "UIStepper+RACSignalSupportHb.h"
@implementation UIStepper (RACSignalSupportHb)
+ (BOOL)rac_newValueChannelWithNilValueHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
