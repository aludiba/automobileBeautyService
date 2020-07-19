#import "BMUIButtonV.h"
@implementation BMUIButtonV
+ (BOOL)bAf_Imagedownloadreceiptforstatebm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)AAf_Setimagedownloadreceiptforstatebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)LAf_Backgroundimagedownloadreceiptforstatebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)HAf_Setbackgroundimagedownloadreceiptforstatebm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
