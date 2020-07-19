#import "hbUICollectionReusableViews.h"
@implementation hbUICollectionReusableViews
+ (BOOL)lrac_prepareForReuseSignal:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
