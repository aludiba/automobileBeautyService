//
//  NDHTTPClient.m
//  CpicJczc
//
//  Created by 褚红彪 on 16/6/1.
//  Copyright © 2016年 cpic. All rights reserved.
//

#import "PVNDHTTPClient.h"
#import "MBProgressHUD.h"

@interface PVNDHTTPClient(){
    NSMutableURLRequest *request;
    NSOperationQueue *queue;
    NSURLConnection *_connection;
    NSMutableData *_reveivedData;
}
@end
static BOOL isChaoShi;
@implementation PVNDHTTPClient
//实现单例方法
+ (PVNDHTTPClient *)PVshareInstance
{
    static PVNDHTTPClient *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PVNDHTTPClient allocWithZone:NULL] init];
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
+ (NSURLSessionDataTask *)PVgetURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    NSURLSessionDataTask *task = [[self PVshareInstance] GET:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
    }];
    return task;
}
//实现GET方法(没有加载图标)
+ (NSURLSessionDataTask *)PVgetURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    NSURLSessionDataTask *task = [[self PVshareInstance] GET:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
    return task;
}
//实现GET方法
+ (NSURLSessionDataTask *)PVgetURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    MBProgressHUD *hud = [[MBProgressHUD alloc] init];
    [window addSubview:hud];
    [hud showAnimated:YES];
    NSURLSessionDataTask *task = [[self PVshareInstance] GET:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [hud hideAnimated:YES];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [hud hideAnimated:YES];
        fail(error, nil);
    }];
    return task;
}
//实现POST方法
+ (void)PVpostURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication].delegate window] animated:YES];
    HUD.label.text = @"加载中...";
    [HUD showAnimated:YES];
    [[self PVshareInstance] POST:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [HUD hideAnimated:YES];
        [HUD removeFromSuperview];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [HUD hideAnimated:YES];
      fail(error, nil);
    }];
}
+ (void)PVpostURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    [[self PVshareInstance] POST:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
}
+ (void)PVputURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication].delegate window] animated:YES];
    HUD.label.text = @"加载中...";
    [HUD showAnimated:YES];
    [[self PVshareInstance] PUT:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [HUD hideAnimated:YES];
        [HUD removeFromSuperview];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [HUD hideAnimated:YES];
        [HUD removeFromSuperview];
        fail(error, nil);
    }];
}
+ (void)PVputURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    [[self PVshareInstance] PUT:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
}
+ (NSURLSessionDataTask *)PVpostURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail{
    NSURLSessionDataTask *task = [[self PVshareInstance] POST:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
    }];
    return task;
}
//删除请求
+ (void)PVdeleteURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    MBProgressHUD *hud = [[MBProgressHUD alloc] init];
    [window addSubview:hud];
    [hud showAnimated:YES];
    [[self PVshareInstance] DELETE:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        [hud hideAnimated:YES];
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [hud hideAnimated:YES];
        fail(error, nil);
    }];
}
+ (void)PVdeleteURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail
{
    [[self PVshareInstance] DELETE:url parameters:param success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        fail(error, nil);
    }];
}
+ (void)PVboolHandleCustomError:(NSError *)error withErrorBlock:(failBOOLBlock)fail{
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
