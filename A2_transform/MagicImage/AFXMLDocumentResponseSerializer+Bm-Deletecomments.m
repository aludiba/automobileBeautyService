#import "AFXMLDocumentResponseSerializer+Bm-Deletecomments.h"
@implementation AFXMLDocumentResponseSerializer (Bm-Deletecomments)
+ (BOOL)serializerBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)serializerWithXMLDocumentOptionsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)initWithCoderBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)encodeWithCoderBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)copyWithZoneBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}

@end
