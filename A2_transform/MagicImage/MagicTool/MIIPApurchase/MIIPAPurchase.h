#import <Foundation/Foundation.h>
typedef void(^payResult)(BOOL isSuccess,NSString *certificate,NSString *errorMsg);
@interface MIIPAPurchase : NSObject
@property (nonatomic, copy)payResult payResultBlock;
@property (nonatomic,copy)NSString * order;
@property (nonatomic,copy)NSString * order_sn ;
@property (nonatomic,copy)NSString * userid;
@property (nonatomic,copy)NSString * money;
@property (nonatomic,copy)NSString * money_type;
@property (nonatomic,copy)NSString * extend;
@property (nonatomic,copy)NSString * pay_type;
@property (nonatomic,copy)NSString * server_id;
@property (nonatomic,copy)NSString * role_id;
@property (nonatomic,copy)NSString * role_name;
@property (nonatomic,copy)NSString * role_level;
@property (nonatomic,copy)NSString * goods_id;
@property (nonatomic,copy)NSString * goods_name;
@property (nonatomic,copy)NSString * third_goods_id;
@property (nonatomic,copy)NSString * third_goods_name;
@property (nonatomic,copy)NSString * cp_trade_sn;
@property (nonatomic,copy)NSString * ext_data;
@property (nonatomic,copy)NSString * app_channel;
@property (nonatomic,copy)NSString * channel_trade_sn;
@property(nonatomic,copy)NSString * amount_type; 
@property(nonatomic,copy)NSString * platformAmount; 
+ (instancetype)manager;
-(void)startManager;
-(void)stopManager;
-(void)buyProductWithProductID:(NSString *)productID  payResult:(payResult)payResult;
@end
