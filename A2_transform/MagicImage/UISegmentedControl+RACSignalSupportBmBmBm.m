#import "UISegmentedControl+RACSignalSupportBmBmBm.h"
@implementation UISegmentedControl (RACSignalSupportBmBmBm)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValueBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
