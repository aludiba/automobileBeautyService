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
@interface autoBeuNDHTTPClient : AFHTTPSessionManager
+ (autoBeuNDHTTPClient *)autoBeushareInstance;
+ (NSURLSessionDataTask *)autoBeugetURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//实现GET方法(没有加载图标)
+ (NSURLSessionDataTask *)autoBeugetURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//GET请求
+ (NSURLSessionDataTask *)autoBeugetURLString:(NSString *)url
          withParam:(id)param
          withSuccessBlock:(successBlock)success
          withErrorBlock:(failBlock)fail;
//Post请求
+ (void)autoBeupostURLString:(NSString *)url
            withParam:(id)param
             withSuccessBlock:(successBlock)success
            withErrorBlock:(failBlock)fail;
//Post请求(没有加载图标)
+ (void)autoBeupostURLStringNoHUD:(NSString *)url
            withParam:(id)param
     withSuccessBlock:(successBlock)success
       withErrorBlock:(failBlock)fail;
//删除请求
+ (void)autoBeudeleteURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)autoBeudeleteURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)autoBeuputURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)autoBeuputURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
@end
