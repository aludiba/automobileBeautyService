#import "MKAnnotationView+RACSignalSupportBm.h"
@implementation MKAnnotationView (RACSignalSupportBm)
+ (BOOL)rac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
