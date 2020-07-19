#import "MIHttpEnclosureTool.h"
#import "MIHttpTool.h"
#import "MIReturnFormat.h"
@implementation MIHttpEnclosureTool
{
    CFAbsoluteTime end;
}
+(void)GET:(NSString *)URLString parameters:(id)parameters resBlock:(resBlock)resBlock{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    [MIHttpTool GET:URLString parameters:parameters success:^(id responseObject) {
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
        MIReturnFormat *format=[MIReturnFormat mj_objectWithKeyValues:responseObject];
        if (format.status==1) {
            NSArray *array=format.data;
            if (array==nil) {
                resBlock(array);
            }else{
                resBlock(format.data);
            }
        }else{
            resBlock(nil);
        }
    } failure:^(NSError *error) {
        resBlock(nil);
    }];
}
+(void)POST:(NSString *)URLString parameters:(id)parameters resBlock:(resBlock)resBlock{
    [MIHttpTool Post:URLString parameters:parameters success:^(id responseObject) {
        MIReturnFormat *format=[MIReturnFormat mj_objectWithKeyValues:responseObject];
        if (format.status==1) {
            NSArray *array=format.data;
            if (array==nil) {
                resBlock(array);
            }else{
                resBlock(format.data);
            }
        }else{
            [MBProgressHUD showTipMessageInWindow:format.msg];
            resBlock(nil);
        }
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
        resBlock(nil);
    }];
}
+(void)Upload:(NSString *)URLString parameters:(id)parameters uploadParamArray:(NSArray *)uploadParamArray  resBlock:(resBlock)resBlock{
    [MIHttpTool Upload:URLString parameters:parameters uploadParamArray:uploadParamArray success:^(id responseObject) {
        MIReturnFormat *format=[MIReturnFormat mj_objectWithKeyValues:responseObject];
        if (format.status==1) {
            NSArray *array=format.data;
            if (array==nil) {
                resBlock(array);
            }else{
                resBlock(format.data);
            }
        }else{
            resBlock(nil);
        }
    } failure:^(NSError *error) {
        resBlock(nil);
    }];
}
#pragma mark 🔥 更新ApiDomain
@end
