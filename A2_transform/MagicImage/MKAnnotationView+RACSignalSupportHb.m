#import "MKAnnotationView+RACSignalSupportHb.h"
@implementation MKAnnotationView (RACSignalSupportHb)
+ (BOOL)rac_prepareForReuseSignalHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
