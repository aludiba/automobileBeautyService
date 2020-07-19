#import "BMAFXMLDocumentResponseSerializerj+-Deletecomments.h"
@implementation BMAFXMLDocumentResponseSerializerj (-Deletecomments)
+ (BOOL)bSerializerbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)vSerializerwithxmldocumentoptionsbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)UInitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)cResponseobjectforresponsedataerrorbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)HInitwithcoderbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)IEncodewithcoderbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)MCopywithzonebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
