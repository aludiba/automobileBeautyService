#import "MKAnnotationView+RACSignalSupport-Deletecomments.h"
@implementation MKAnnotationView (RACSignalSupport-Deletecomments)
+ (BOOL)rac_prepareForReuseSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}

@end
