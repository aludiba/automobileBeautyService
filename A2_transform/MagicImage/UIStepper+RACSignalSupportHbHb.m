#import "UIStepper+RACSignalSupportHbHb.h"
@implementation UIStepper (RACSignalSupportHbHb)
+ (BOOL)rac_newValueChannelWithNilValueHbHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
