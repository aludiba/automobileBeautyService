#import "UISegmentedControl+RACSignalSupportHb.h"
@implementation UISegmentedControl (RACSignalSupportHb)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValueHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
