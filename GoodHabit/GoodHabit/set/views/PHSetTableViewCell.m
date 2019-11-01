//
//  PHSetTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHSetTableViewCell.h"
#import "PHSetViewModel.h"

@interface PHSetTableViewCell()
@property(nonatomic, strong)UILabel *PHtitleLbl;
@property(nonatomic, strong)UILabel *PHcontentLbl;
@property(nonatomic, strong)UIImageView *PHarrowImgView;
@property(nonatomic, strong)UIView *PHline;
@end
@implementation PHSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = PHH_Color(244, 245, 246, 1);
        [self.contentView addSubview:self.PHtitleLbl];
        [self.contentView addSubview:self.PHcontentLbl];
        [self.contentView addSubview:self.PHarrowImgView];
        [self.contentView addSubview:self.PHline];
        
        [self.PHtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(PHWIDTH * 0.5 - 20);
            make.height.mas_equalTo(21);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.PHarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.PHcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.PHarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(PHWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(16);
        }];
        [self.PHline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(PHSetViewModel *)model{
    _model = model;
    self.PHtitleLbl.text = _model.title;
    self.PHcontentLbl.text = _model.content;
}
#pragma mark - 属性懒加载
- (UILabel *)PHtitleLbl{
    if (!_PHtitleLbl) {
        _PHtitleLbl = [[UILabel alloc] init];
        _PHtitleLbl.textColor = [UIColor blackColor];
        _PHtitleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _PHtitleLbl;
}
- (UILabel *)PHcontentLbl{
    if (!_PHcontentLbl) {
        _PHcontentLbl = [[UILabel alloc] init];
        _PHcontentLbl.textAlignment = NSTextAlignmentRight;
        _PHcontentLbl.textColor = [UIColor blueColor];
        _PHcontentLbl.font = [UIFont systemFontOfSize:15];
    }
    return _PHcontentLbl;
}
- (UIImageView *)PHarrowImgView{
    if (!_PHarrowImgView) {
        _PHarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PH_arrow_right"]];
    }
    return _PHarrowImgView;
}
- (UIView *)PHline{
    if (!_PHline) {
        _PHline = [[UIView alloc] init];
        _PHline.backgroundColor = PHH_Color(216, 218, 219, 1);
    }
    return _PHline;
}
@end
