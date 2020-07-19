#import "BMAFJSONRequestSerializerg+-Deletecomments.h"
@implementation BMAFJSONRequestSerializerg (-Deletecomments)
+ (BOOL)XSerializerbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)iSerializerwithwritingoptionsbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)bRequestbyserializingrequestwithparameterserrorbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)LInitwithcoderbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)bEncodewithcoderbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)LCopywithzonebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
