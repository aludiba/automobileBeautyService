#import "MIHttpTool+BmHb.h"
@implementation MIHttpTool (BmHb)
+ (BOOL)GETParametersSuccessFailureBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)PostParametersSuccessFailureBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)SynchronousPostParametersSuccessFailureBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)UploadParametersUploadparamarraySuccessFailureBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)compressOriginalImageTomaxdatasizekbytesBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)GETNormarDataParametersSuccessFailureBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)canAllRequestBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)createManagerBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)installGetRequestParametersBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)installPostRequestParametersBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
