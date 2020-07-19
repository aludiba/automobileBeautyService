#import "MKAnnotationView+RACSignalSupportBmBm.h"
@implementation MKAnnotationView (RACSignalSupportBmBm)
+ (BOOL)rac_prepareForReuseSignalBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
