#import <Foundation/Foundation.h>
//#import "MJExtension.h"
#import <MJExtension/MJExtension.h>

@interface MIReturnFormat : NSObject<MJKeyValue>
@property (nonatomic,assign) float status;
@property(copy,nonatomic)NSString * msg;
@property(strong,nonatomic)id data;
@property(copy,nonatomic)NSString *server_time;
@end
