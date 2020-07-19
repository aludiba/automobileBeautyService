#import "UISegmentedControl+RACSignalSupportBm.h"
@implementation UISegmentedControl (RACSignalSupportBm)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValueBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
