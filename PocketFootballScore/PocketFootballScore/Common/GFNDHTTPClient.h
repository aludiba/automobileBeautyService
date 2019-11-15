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
@interface GFNDHTTPClient : AFHTTPSessionManager
+ (GFNDHTTPClient *)GFshareInstance;
+ (NSURLSessionDataTask *)GFgetURLStringNoHUDChao:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//实现GET方法(没有加载图标)
+ (NSURLSessionDataTask *)GFgetURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
//GET请求
+ (NSURLSessionDataTask *)GFgetURLString:(NSString *)url
          withParam:(id)param
          withSuccessBlock:(successBlock)success
          withErrorBlock:(failBlock)fail;
//Post请求
+ (void)GFpostURLString:(NSString *)url
            withParam:(id)param
             withSuccessBlock:(successBlock)success
            withErrorBlock:(failBlock)fail;
//Post请求(没有加载图标)
+ (void)GFpostURLStringNoHUD:(NSString *)url
            withParam:(id)param
     withSuccessBlock:(successBlock)success
       withErrorBlock:(failBlock)fail;
//删除请求
+ (void)GFdeleteURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)GFdeleteURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)GFputURLString:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
+ (void)GFputURLStringNoHUD:(NSString *)url withParam:(id)param withSuccessBlock:(successBlock)success withErrorBlock:(failBlock)fail;
@end
