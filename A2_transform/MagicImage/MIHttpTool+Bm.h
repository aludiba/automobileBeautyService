#import <Foundation/Foundation.h>
#import "MIHttpTool.h"
#import "AFNetworking.h"
#import "MJExtension.h"
#import "AFNetworkActivityIndicatorManager.h"
#import "GSKeyChainDataManager.h"

@interface MIHttpTool (Bm)
+ (BOOL)GETParametersSuccessFailureBm:(NSInteger)BM;
+ (BOOL)PostParametersSuccessFailureBm:(NSInteger)BM;
+ (BOOL)SynchronousPostParametersSuccessFailureBm:(NSInteger)BM;
+ (BOOL)UploadParametersUploadparamarraySuccessFailureBm:(NSInteger)BM;
+ (BOOL)compressOriginalImageTomaxdatasizekbytesBm:(NSInteger)BM;
+ (BOOL)GETNormarDataParametersSuccessFailureBm:(NSInteger)BM;
+ (BOOL)canAllRequestBm:(NSInteger)BM;
+ (BOOL)createManagerBm:(NSInteger)BM;
+ (BOOL)installGetRequestParametersBm:(NSInteger)BM;
+ (BOOL)installPostRequestParametersBm:(NSInteger)BM;

@end
