//
//  YBSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBSetTableViewCell.h"
#import "YBSetViewModel.h"
@interface YBSetTableViewCell()
@property(nonatomic, strong)UILabel *YBtitleLbl;
@property(nonatomic, strong)UILabel *YBcontentLbl;
@property(nonatomic, strong)UIImageView *YBarrowImgView;
@end
@implementation YBSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.YBtitleLbl];
        [self.contentView addSubview:self.YBcontentLbl];
        [self.contentView addSubview:self.YBarrowImgView];
        
        [self.YBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(YBWIDTH * 0.5 - 20);
            make.height.mas_equalTo(28);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.YBarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.YBcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.YBarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(YBWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(32);
        }];
    }
    return self;
}
- (void)setModel:(YBSetViewModel *)model{
    _model = model;
    self.YBtitleLbl.text = [NSString stringWithFormat:@"  %@  ",_model.YBtitle];
    CGSize size = [self.YBtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 28)];
    [self.YBtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.YBtitleLbl layoutIfNeeded];
    if (_model.YBcontent.length) {
        self.YBcontentLbl.hidden = NO;
    self.YBcontentLbl.text = [NSString stringWithFormat:@"  %@  ",_model.YBcontent];
    size = [self.YBcontentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 32)];
    [self.YBcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.YBcontentLbl layoutIfNeeded];
    }else{
        self.YBcontentLbl.hidden = YES;
    }
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)YBtitleLbl{
    if (!_YBtitleLbl) {
        _YBtitleLbl = [[UILabel alloc] init];
        _YBtitleLbl.textColor = [UIColor blackColor];
        _YBtitleLbl.font = [UIFont systemFontOfSize:18];
        _YBtitleLbl.backgroundColor = [UIColor systemGrayColor];
        _YBtitleLbl.layer.cornerRadius = 14.0f;
        _YBtitleLbl.layer.masksToBounds = YES;
    }
    return _YBtitleLbl;
}
- (UILabel *)YBcontentLbl{
    if (!_YBcontentLbl) {
        _YBcontentLbl = [[UILabel alloc] init];
        _YBcontentLbl.textColor = [UIColor blackColor];
        _YBcontentLbl.font = [UIFont boldSystemFontOfSize:22];
        _YBcontentLbl.backgroundColor = [UIColor systemGrayColor];
        _YBcontentLbl.layer.cornerRadius = 16.0f;
        _YBcontentLbl.layer.masksToBounds = YES;
    }
    return _YBcontentLbl;
}
- (UIImageView *)YBarrowImgView{
    if (!_YBarrowImgView) {
        _YBarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"YB_arrow_right"]];
    }
    return _YBarrowImgView;
}
@end
