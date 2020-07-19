#import "MKAnnotationView+RACSignalSupportHbHb.h"
@implementation MKAnnotationView (RACSignalSupportHbHb)
+ (BOOL)rac_prepareForReuseSignalHbHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
