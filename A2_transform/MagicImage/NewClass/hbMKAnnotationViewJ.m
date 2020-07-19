#import "hbMKAnnotationViewJ.h"
@implementation hbMKAnnotationViewJ
+ (BOOL)nrac_prepareForReuseSignal:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
