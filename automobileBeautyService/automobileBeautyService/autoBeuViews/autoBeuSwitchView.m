//
//  auto4sSwitchView.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/13.
//  Copyright © 2019 ppb. All rights reserved.
//

#import "autoBeuSwitchView.h"
@interface autoBeuSwitchView()

@end
@implementation autoBeuSwitchView
- (instancetype)init{
    self = [super init];
    if (self) {
        [self addSubview:self.autoBeutitleLbl];
        [self addSubview:self.autoBeuswitch];
        
        [self.autoBeutitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self);
            make.centerY.equalTo(self);
            make.trailing.equalTo(self).offset(-44);
            make.bottom.equalTo(self);
        }];
        [self.autoBeuswitch mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.autoBeutitleLbl.mas_trailing);
            make.centerY.equalTo(self);
            make.trailing.equalTo(self).offset(-5);
            make.bottom.equalTo(self);
        }];
    }
    return self;
}
- (void)setAutoBeuDictionary:(NSMutableDictionary *)autoBeuDictionary{
    _autoBeuDictionary = autoBeuDictionary;
    NSString *name = _autoBeuDictionary[@"name"];
    self.autoBeutitleLbl.text = name;
    bool switchB = [_autoBeuDictionary[@"switch"] boolValue];
    [self.autoBeuswitch setOn:switchB];
}
- (void)switch:(UISwitch *)sender{
    NSNumber *switchN = [NSNumber numberWithBool:sender.isOn];
    [self.autoBeuDictionary setObject:switchN forKey:@"switch"];
}
#pragma mark - 属性懒加载
- (UILabel *)autoBeutitleLbl{
    if (!_autoBeutitleLbl) {
        _autoBeutitleLbl = [[UILabel alloc] init];
        _autoBeutitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _autoBeutitleLbl.textColor =  [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _autoBeutitleLbl.numberOfLines = 0;
    }
    return _autoBeutitleLbl;
}
- (UISwitch *)autoBeuswitch{
    if (!_autoBeuswitch) {
        _autoBeuswitch = [[UISwitch alloc] init];
        [_autoBeuswitch addTarget:self action:@selector(switch:) forControlEvents:UIControlEventValueChanged];
    }
    return _autoBeuswitch;
}
@end
