#import "MIHttpTool.h"
#import "AFNetworking.h"
//#import "MJExtension.h"
#import <MJExtension/MJExtension.h>
#import "AFNetworkActivityIndicatorManager.h"
#import "GSKeyChainDataManager.h"
static const NSUInteger REQUEST_TIME = 30;
//#define BoundID @"com.photoeditai.myphoto"
#define BoundID @"com.getpiccollages1s.cc"
@implementation MIHttpTool
+ (void)GET:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure{
    AFHTTPSessionManager *Manager = [self createManager];
    KWeakSelf(self);
    NSDictionary * parm = [weakself installGetRequestParameters:parameters];
    NSString *urlRealString = [NSString stringWithFormat:@"%@/api/%@",LSBaseUrl,URLString];
    [Manager GET:urlRealString parameters:parm headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success ? success(responseObject) :nil;
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}
+ (void)Post:(NSString *)URLString  parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure{
    AFHTTPSessionManager *Manager = [self createManager];
    KWeakSelf(self);
    NSDictionary *parm = [weakself installPostRequestParameters:parameters];
    NSString *urlRealString=[NSString stringWithFormat:@"%@/api/%@",LSBaseUrl,URLString];
    [Manager POST:urlRealString parameters:parm headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success ? success(responseObject) :nil;
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
        MyLog(@"%@",error);
    }];
    [UIColor whiteColor];
}
+ (void)SynchronousPost:(NSString *)URLString  parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure{
    AFHTTPSessionManager *Manager = [self createManager];
    KWeakSelf(self);
    Manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    NSDictionary *parm = [weakself installPostRequestParameters:parameters];
    NSString *urlRealString=[NSString stringWithFormat:@"%@/api/%@",LSBaseUrl,URLString];
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0); 
    [Manager POST:urlRealString parameters:parm headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success ? success(responseObject) :nil;
        if ([responseObject isKindOfClass:[NSData class]]) {
            NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            MyLog(@"%@",str);
        }
        dispatch_semaphore_signal(semaphore);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
        dispatch_semaphore_signal(semaphore);
    }];
    dispatch_semaphore_wait(semaphore,DISPATCH_TIME_FOREVER);  
}
+ (void)Upload:(NSString *)URLString parameters:(id)parameters uploadParamArray:(NSArray *)uploadParamArray success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure{
    AFHTTPSessionManager *Manager = [self createManager];
    NSDictionary *parm=[self installPostRequestParameters:parameters];
    NSString *urlRealString=[NSString stringWithFormat:@"%@/api/%@",LSBaseUrl,URLString];
    urlRealString=[NSString stringWithFormat:@"%@?%@",urlRealString,[CommonClass stringFromParameters:parm]];
    [Manager POST:urlRealString parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for(NSInteger i = 0; i < uploadParamArray.count; i++)
        {
            NSData *data = [self compressOriginalImage:uploadParamArray[i] toMaxDataSizeKBytes:300];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
            NSString *imageName = [formatter stringFromDate:[NSDate date]];
            NSString * Name = [NSString stringWithFormat:@"%@%ld", imageName,i+1];
            NSString * fileName = [NSString stringWithFormat:@"%@.jpeg", Name];
            [formData appendPartWithFileData:data name:@"file" fileName:fileName mimeType:@"image/jpeg"];
        }
    } progress:^(NSProgress * _Nonnull uploadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success ? success(responseObject) :nil;
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}
+ (NSData *)compressOriginalImage:(UIImage *)image toMaxDataSizeKBytes:(CGFloat)size{
    NSData * data = UIImageJPEGRepresentation(image, 1.0);
    CGFloat dataKBytes = data.length/1000.0;
    CGFloat maxQuality = 0.9f;
    CGFloat lastData = dataKBytes;
    while (dataKBytes > size && maxQuality > 0.01f) {
        maxQuality = maxQuality - 0.01f;
        data = UIImageJPEGRepresentation(image, maxQuality);
        dataKBytes = data.length / 1000.0;
        if (lastData == dataKBytes) {
            break;
        }else{
            lastData = dataKBytes;
        }
    }
    return data;
}
#pragma mark -- 不拼接  不加密的网络请求
+ (void)GETNormarData:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure{
    AFHTTPSessionManager * Manager = [self createManager];
    [Manager GET:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success ? success(responseObject) :nil;
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}
+ (void)canAllRequest{
    AFHTTPSessionManager *Manager = [AFHTTPSessionManager manager];
    [Manager.operationQueue cancelAllOperations];
}
+ (AFHTTPSessionManager *)createManager{
    AFHTTPSessionManager *Manager = [AFHTTPSessionManager manager];
    [Manager.requestSerializer setTimeoutInterval:REQUEST_TIME]; 
    Manager.responseSerializer = [AFJSONResponseSerializer serializer]; 
    Manager.operationQueue.maxConcurrentOperationCount = 5; 
    Manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil];
    return Manager;
}
+(NSDictionary *)installGetRequestParameters:(NSDictionary *)parameters{
    NSMutableDictionary *parms = [NSMutableDictionary dictionary];
    parms[@"platform"] = @"ios";
    parms[@"package_name"] = BoundID;
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    parms[@"version"] = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    parms[@"is_aes"] = @"delaes123456";
    return parms;
}
+(NSDictionary *)installPostRequestParameters:(NSDictionary *)parameters{
    NSMutableDictionary *parms = parameters.mutableCopy;
    parms[@"platform"] = @"ios";
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"fid"]) {
        parms[@"fid"] = [[NSUserDefaults standardUserDefaults] objectForKey:@"fid"];
    }
    MyLog(@"%@",[GSKeyChainDataManager readUUID]);
    if ([CommonClass isBlankString:[GSKeyChainDataManager readUUID]]) {
        NSString * idfv = [[UIDevice currentDevice].identifierForVendor UUIDString];
        if ([CommonClass isBlankString:idfv]) {
            parms[@"equipment_id"] = @"ios_71F1F9AD-1473-4346-9AC1-9A5D6C0BE4CC";
        }else{
            parms[@"equipment_id"] = [NSString stringWithFormat:@"ios_%@",idfv];
            [GSKeyChainDataManager saveUUID:[NSString stringWithFormat:@"ios_%@",idfv]];
        }
    }else{
        parms[@"equipment_id"] = [GSKeyChainDataManager readUUID];
    }
    parms[@"package_name"] = BoundID;
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    parms[@"version"] = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    parms[@"is_aes"] = @"delaes123456";
    return parms;
}
@end
