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
@interface GANDHTTPClient : AFHTTPSessionManager
+ (GANDHTTPClient *)GAshareInstance;
+ (NSURLSessionDataTask *)GAgetURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//实现GET方法(没有加载图标)
+ (NSURLSessionDataTask *)GAgetURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//GET请求
+ (NSURLSessionDataTask *)GAgetURLString:(NSString *)url
          withParam:(id)param
          withSuccessBlock:(successBlock)success
          withErrorBlock:(failBlock)fail;
//Post请求
+ (void)GApostURLString:(NSString *)url
            withParam:(id)param
             withSuccessBlock:(successBlock)success
            withErrorBlock:(failBlock)fail;
//Post请求(没有加载图标)
+ (void)GApostURLStringNoHUD:(NSString *)url
            withParam:(id)param
     withSuccessBlock:(successBlock)success
       withErrorBlock:(failBlock)fail;
//删除请求
+ (void)GAdeleteURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)GAdeleteURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)GAputURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)GAputURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
@end
