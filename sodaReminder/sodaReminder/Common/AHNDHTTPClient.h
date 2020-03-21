//
//  NDHTTPClient.h
//  CpicJczc
//
//  Created by 褚红彪 on 16/6/1.
//  Copyright © 2016年 cpic. All rights reserved.
//
#import "AFHTTPSessionManager.h"
#import "AppDelegate.h"
typedef void (^successBlock)(id data);
typedef void (^failBlock)(NSError *error, id errorData);
typedef BOOL (^successBOOLBlock)(id data);
typedef BOOL (^failBOOLBlock)(NSError *error, id errorData);
@interface AHNDHTTPClient : AFHTTPSessionManager
+ (AHNDHTTPClient *)AHshareInstance;
+ (NSURLSessionDataTask *)AHgetURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//实现GET方法(没有加载图标)
+ (NSURLSessionDataTask *)AHgetURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//GET请求
+ (NSURLSessionDataTask *)AHgetURLString:(NSString *)url
          withParam:(id)param
          withSuccessBlock:(successBlock)success
          withErrorBlock:(failBlock)fail;
//Post请求
+ (void)AHpostURLString:(NSString *)url
            withParam:(id)param
             withSuccessBlock:(successBlock)success
            withErrorBlock:(failBlock)fail;
//Post请求(没有加载图标)
+ (void)AHpostURLStringNoHUD:(NSString *)url
            withParam:(id)param
     withSuccessBlock:(successBlock)success
       withErrorBlock:(failBlock)fail;
//删除请求
+ (void)AHdeleteURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)AHdeleteURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)AHputURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)AHputURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
@end
