//
//  auto4sRecordTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/15.
//  Copyright © 2019 ppb. All rights reserved.
//

#import "autoBeuRecordTableViewCell.h"
#import "autoBeuHomeViewController.h"

@interface autoBeuRecordTableViewCell()
@property(nonatomic, strong)UILabel *autoBeunameLbl;
@property(nonatomic, strong)UILabel *autoBeulicensePlateLbl;
@property(nonatomic, strong)UILabel *autoBeudateLbl;
@end
@implementation autoBeuRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGFloat aRedValue = arc4random() % 255;
        CGFloat aGreenValue = arc4random() % 255;
        CGFloat aBlueValue = arc4random() % 255;
        self.contentView.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
        [self.contentView addSubview:self.autoBeunameLbl];
        [self.contentView addSubview:self.autoBeulicensePlateLbl];
        [self.contentView addSubview:self.autoBeudateLbl];
        
        [self.autoBeunameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(15.5);
            make.height.mas_equalTo(24);
            make.width.mas_equalTo(auto4sWIDTH - 30);
        }];
        [self.autoBeulicensePlateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.autoBeunameLbl.mas_bottom).offset(3);
            make.height.mas_equalTo(24);
            make.width.mas_equalTo(auto4sWIDTH - 30);
        }];
        [self.autoBeudateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.autoBeulicensePlateLbl.mas_bottom).offset(3);
            make.height.mas_equalTo(13);
            make.width.mas_equalTo(120);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = auto4sH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.autoBeudateLbl.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(autoBeuDataModel *)model{
    _model = model;
    self.autoBeunameLbl.text = [NSString stringWithFormat:@"name:   %@",_model.name];
    self.autoBeulicensePlateLbl.text = [NSString stringWithFormat:@"licensePlate:   %@",_model.licensePlate];
    self.autoBeudateLbl.text = _model.date;
}
- (UILabel *)autoBeunameLbl{
    if (!_autoBeunameLbl) {
        _autoBeunameLbl = [[UILabel alloc] init];
        _autoBeunameLbl.textColor = [UIColor greenColor];
        _autoBeunameLbl.font = [UIFont systemFontOfSize:16];
    }
    return _autoBeunameLbl;
}
- (UILabel *)autoBeulicensePlateLbl{
    if (!_autoBeulicensePlateLbl) {
        _autoBeulicensePlateLbl = [[UILabel alloc] init];
        _autoBeulicensePlateLbl.textColor = [UIColor redColor];
        _autoBeulicensePlateLbl.font = [UIFont systemFontOfSize:18];
        _autoBeulicensePlateLbl.numberOfLines = 0;
    }
    return _autoBeulicensePlateLbl;
}
- (UILabel *)autoBeudateLbl{
    if (!_autoBeudateLbl) {
        _autoBeudateLbl = [[UILabel alloc] init];
        _autoBeudateLbl.textColor = [UIColor purpleColor];
        _autoBeudateLbl.font = [UIFont systemFontOfSize:13];
    }
    return _autoBeudateLbl;
}
@end
