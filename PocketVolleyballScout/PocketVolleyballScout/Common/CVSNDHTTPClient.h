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
@interface CVSNDHTTPClient : AFHTTPSessionManager
+ (CVSNDHTTPClient *)CVSshareInstance;
+ (NSURLSessionDataTask *)CVSgetURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//实现GET方法(没有加载图标)
+ (NSURLSessionDataTask *)CVSgetURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//GET请求
+ (NSURLSessionDataTask *)CVSgetURLString:(NSString *)url
          withParam:(id)param
          withSuccessBlock:(successBlock)success
          withErrorBlock:(failBlock)fail;
//Post请求
+ (void)CVSpostURLString:(NSString *)url
            withParam:(id)param
             withSuccessBlock:(successBlock)success
            withErrorBlock:(failBlock)fail;
//Post请求(没有加载图标)
+ (void)CVSpostURLStringNoHUD:(NSString *)url
            withParam:(id)param
     withSuccessBlock:(successBlock)success
       withErrorBlock:(failBlock)fail;
//删除请求
+ (void)CVSdeleteURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)CVSdeleteURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)CVSputURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)CVSputURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
@end
