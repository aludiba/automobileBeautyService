#import <Foundation/Foundation.h>
typedef void(^resBlock)(id responseObject);
@interface MIHttpEnclosureTool : NSObject
+(void)GET:(NSString *)URLString parameters:(id)parameters resBlock:(resBlock)resBlock;
+(void)POST:(NSString *)URLString parameters:(id)parameters resBlock:(resBlock)resBlock;
+(void)Upload:(NSString *)URLString parameters:(id)parameters uploadParamArray:(NSArray *)uploadParamArray  resBlock:(resBlock)resBlock;
@end
