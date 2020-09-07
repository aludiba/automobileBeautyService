#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, QMSettingType) {
    QMSettingTypeSwitch = 1,
    QMSettingTypeLink = 2
};
@interface LCDQMSettingModel : NSObject
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) QMSettingType settingType;
@property (nonatomic, assign) BOOL switchOn;
@property (nonatomic, assign) NSString *link;
+ (NSDictionary<NSNumber *, NSArray<LCDQMSettingModel *> *> *)buildSettingModels;
@end
