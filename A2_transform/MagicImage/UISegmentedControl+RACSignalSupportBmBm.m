#import "UISegmentedControl+RACSignalSupportBmBm.h"
@implementation UISegmentedControl (RACSignalSupportBmBm)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValueBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
