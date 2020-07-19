#import "BMYWebDataHandleT+Bm.h"
@implementation BMYWebDataHandleT (Bm)
+ (BOOL)wImagenameforbase64HandleBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)pStringforbase64HandleBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)gdocumentPathBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)xDocumentappendpathBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)mDocumentappendpathsBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)DDocumentywebimagefilewithfolderBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)RDocumentywebimagefileappendwithfolderoWithfileBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)kDocumentywebimagefileappendbase64WithfolderxWithfileBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
