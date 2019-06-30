//
//  mag5sRecordTableViewCell.m
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sRecordTableViewCell.h"
#import "mag5sDataModel.h"
#import "mag5sHomeViewController.h"

@interface mag5sRecordTableViewCell()
@property(nonatomic, strong)UILabel *mag5sSectionNameLbl;
@property(nonatomic, strong)UILabel *mag5sScoreLbl;
@property(nonatomic, strong)UILabel *mag5sDateLbl;
@end
@implementation mag5sRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.mag5sSectionNameLbl];
        [self.contentView addSubview:self.mag5sScoreLbl];
        [self.contentView addSubview:self.mag5sDateLbl];
        
        [self.mag5sSectionNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(15.5);
            make.height.mas_equalTo(24);
            make.width.mas_equalTo(mag5sWIDTH - 30);
        }];
        [self.mag5sScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.mag5sSectionNameLbl.mas_bottom).offset(3);
            make.height.mas_equalTo(24);
            make.width.mas_equalTo(mag5sWIDTH - 30);
        }];
        [self.mag5sDateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.mag5sScoreLbl.mas_bottom).offset(3);
            make.height.mas_equalTo(13);
            make.width.mas_equalTo(120);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = mag5sH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mag5sDateLbl.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(mag5sDataModel *)model{
    _model = model;
    self.mag5sSectionNameLbl.text = [NSString stringWithFormat:@"section Name:   %@",_model.sectionName];
    self.mag5sScoreLbl.text = [NSString stringWithFormat:@"score:   %@",_model.score];
    self.mag5sDateLbl.text = _model.date;
}
#pragma mark - 属性懒加载
- (UILabel *)mag5sSectionNameLbl{
    if (!_mag5sSectionNameLbl) {
        _mag5sSectionNameLbl = [[UILabel alloc] init];
        _mag5sSectionNameLbl.textColor = [UIColor greenColor];
        _mag5sSectionNameLbl.font = [UIFont systemFontOfSize:16];
    }
    return _mag5sSectionNameLbl;
}
- (UILabel *)mag5sScoreLbl{
    if (!_mag5sScoreLbl) {
        _mag5sScoreLbl = [[UILabel alloc] init];
        _mag5sScoreLbl.textColor = [UIColor redColor];
        _mag5sScoreLbl.font = [UIFont systemFontOfSize:18];
        _mag5sScoreLbl.numberOfLines = 0;
    }
    return _mag5sScoreLbl;
}
- (UILabel *)mag5sDateLbl{
    if (!_mag5sDateLbl) {
        _mag5sDateLbl = [[UILabel alloc] init];
        _mag5sDateLbl.textColor = [UIColor purpleColor];
        _mag5sDateLbl.font = [UIFont systemFontOfSize:13];
    }
    return _mag5sDateLbl;
}
@end
