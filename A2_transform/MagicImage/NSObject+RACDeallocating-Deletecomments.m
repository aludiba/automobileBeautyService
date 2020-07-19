#import "NSObject+RACDeallocating-Deletecomments.h"
@implementation NSObject (RACDeallocating-Deletecomments)
+ (BOOL)rac_willDeallocSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)rac_deallocDisposable-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
