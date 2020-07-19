#import "MIHttpTool+Bm.h"
@implementation MIHttpTool (Bm)
+ (BOOL)GETParametersSuccessFailureBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)PostParametersSuccessFailureBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)SynchronousPostParametersSuccessFailureBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)UploadParametersUploadparamarraySuccessFailureBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)compressOriginalImageTomaxdatasizekbytesBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)GETNormarDataParametersSuccessFailureBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)canAllRequestBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)createManagerBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)installGetRequestParametersBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)installPostRequestParametersBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
