//
//  NDHTTPClient.m
//  CpicJczc
//
//  Created by 褚红彪 on 16/6/1.
//  Copyright © 2016年 cpic. All rights reserved.
//

#import "stbaNDHTTPClient.h"
#import "MBProgressHUD.h"

@interface stbaNDHTTPClient(){
    NSMutableURLRequest *request;
    NSOperationQueue *queue;
    NSURLConnection *_connection;
    NSMutableData *_reveivedData;
}
@end
static BOOL isChaoShi;
@implementation stbaNDHTTPClient
//实现单例方法
+ (stbaNDHTTPClient *)stbashareInstance
{
    static stbaNDHTTPClient *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[stbaNDHTTPClient allocWithZone:NULL] init];
        AFJSONResponseSerializer *response = [AFJSONResponseSerializer serializer];
        response.removesKeysWithNullValues = YES;
        client.responseSerializer = response;
        client.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"multipart/form-data", @"text/javascript",@"application/json", @"text/html", @"image/jpeg", @"image/png", @"application/octet-stream", @"text/json", nil];
        
        client.requestSerializer = [AFJSONRequestSerializer serializer];
        // 设置超时时间
        [client.requestSerializer willChangeValueForKey:@"timeoutInterval"];
        client.requestSerializer.timeoutInterval = 60.0f;
        [client.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    });
    return client;
}
+ (NSURLSessionDataTask *)stbagetURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    NSURLSessionDataTask *task = [[self stbashareInstance] GET:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
//        [self handleCustomError:error withErrorBlock:fail];
    }];
    return task;
}
//实现GET方法(没有加载图标)
+ (NSURLSessionDataTask *)stbagetURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    NSURLSessionDataTask *task = [[self stbashareInstance] GET:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
//        [self logResponseObjectJsonString:responseObject];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
    return task;
}
//实现GET方法
+ (NSURLSessionDataTask *)stbagetURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    MBProgressHUD *hud = [[MBProgressHUD alloc] init];
    [window addSubview:hud];
    [hud showAnimated:YES];
    NSURLSessionDataTask *task = [[self stbashareInstance] GET:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [hud hideAnimated:YES];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [hud hideAnimated:YES];
        fail(error, nil);
    }];
    return task;
}
//实现POST方法
+ (void)stbapostURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication].delegate window] animated:YES];
    HUD.label.text = @"加载中...";
    [HUD showAnimated:YES];
    [[self stbashareInstance] POST:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [HUD hideAnimated:YES];
        [HUD removeFromSuperview];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [HUD hideAnimated:YES];
      fail(error, nil);
    }];
}
+ (void)stbapostURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    [[self stbashareInstance] POST:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
}
+ (void)stbaputURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication].delegate window] animated:YES];
    HUD.label.text = @"加载中...";
    [HUD showAnimated:YES];
    [[self stbashareInstance] PUT:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [HUD hideAnimated:YES];
        [HUD removeFromSuperview];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [HUD hideAnimated:YES];
        [HUD removeFromSuperview];
        fail(error, nil);
    }];
}
+ (void)stbaputURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    [[self stbashareInstance] PUT:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
}
+ (NSURLSessionDataTask *)stbapostURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    NSURLSessionDataTask *task = [[self stbashareInstance] POST:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
    }];
    return task;
}
//删除请求
+ (void)stbadeleteURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    MBProgressHUD *hud = [[MBProgressHUD alloc] init];
    [window addSubview:hud];
    [hud showAnimated:YES];
    [[self stbashareInstance] DELETE:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [hud hideAnimated:YES];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [hud hideAnimated:YES];
        fail(error, nil);
    }];
}
+ (void)stbadeleteURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    [[self stbashareInstance] DELETE:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
}
+ (void)stbaboolHandleCustomError:(NSError *)error withErrorBlock:(failBOOLBlock)fail{
    NSData *errorJsonData = error.userInfo[@"com.alamofire.serialization.response.error.data"];
    if (errorJsonData && [errorJsonData isKindOfClass:[NSData class]]) {
        id errorData = [NSJSONSerialization JSONObjectWithData:errorJsonData options:0 error:nil];
        if (fail) {
            fail(error, errorData);
        }
    } else {
        if (fail) {
            fail(error, nil);
        }
    }
}
@end
