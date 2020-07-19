#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, QMSettingType) {
    QMSettingTypeSwitch = 1,
    QMSettingTypeLink = 2
};
@interface BKQMSettingModel : NSObject
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) QMSettingType settingType;
@property (nonatomic, assign) BOOL switchOn;
@property (nonatomic, assign) NSString *link;
+ (NSDictionary<NSNumber *, NSArray<BKQMSettingModel *> *> *)buildSettingModels;
@end
