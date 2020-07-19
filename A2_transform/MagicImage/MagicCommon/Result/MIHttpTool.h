#import <Foundation/Foundation.h>
@interface MIHttpTool : NSObject
+ (void)GET:(NSString *)URLString
 parameters:(id)parameters
    success:(void (^)(id responseObject))success
    failure:(void (^)(NSError *error))failure;
+ (void)Post:(NSString *)URLString
  parameters:(id)parameters
     success:(void (^)(id responseObject))success
     failure:(void (^)(NSError *error))failure;
+ (void)Upload:(NSString *)URLString parameters:(id)parameters uploadParamArray:(NSArray *)uploadParamArray success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
+ (void)GETNormarData:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
+ (void)SynchronousPost:(NSString *)URLString  parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
+ (void)canAllRequest;
@end
