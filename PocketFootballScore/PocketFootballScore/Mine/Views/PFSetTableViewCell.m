//
//  PFSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFSetTableViewCell.h"
#import "PFSetViewModel.h"
@interface PFSetTableViewCell()
@property(nonatomic, strong)UILabel *PFtitleLbl;
@property(nonatomic, strong)UILabel *PFcontentLbl;
@property(nonatomic, strong)UIImageView *PFarrowImgView;
@end
@implementation PFSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PFtitleLbl];
        [self.contentView addSubview:self.PFcontentLbl];
        [self.contentView addSubview:self.PFarrowImgView];
        
        [self.PFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(PFWIDTH * 0.5 - 20);
            make.height.mas_equalTo(28);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.PFarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.PFcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.PFarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(PFWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(32);
        }];
    }
    return self;
}
- (void)setModel:(PFSetViewModel *)model{
    _model = model;
    self.PFtitleLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PFtitle];
    CGSize size = [self.PFtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 28)];
    [self.PFtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PFtitleLbl layoutIfNeeded];
    if (_model.PFcontent.length) {
        self.PFcontentLbl.hidden = NO;
    self.PFcontentLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PFcontent];
    size = [self.PFcontentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 32)];
    [self.PFcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PFcontentLbl layoutIfNeeded];
    }else{
        self.PFcontentLbl.hidden = YES;
    }
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)PFtitleLbl{
    if (!_PFtitleLbl) {
        _PFtitleLbl = [[UILabel alloc] init];
        _PFtitleLbl.textColor = [UIColor blackColor];
        _PFtitleLbl.font = [UIFont systemFontOfSize:18];
        _PFtitleLbl.backgroundColor = [UIColor systemGrayColor];
        _PFtitleLbl.layer.cornerRadius = 14.0f;
        _PFtitleLbl.layer.masksToBounds = YES;
    }
    return _PFtitleLbl;
}
- (UILabel *)PFcontentLbl{
    if (!_PFcontentLbl) {
        _PFcontentLbl = [[UILabel alloc] init];
        _PFcontentLbl.textColor = [UIColor blackColor];
        _PFcontentLbl.font = [UIFont boldSystemFontOfSize:22];
        _PFcontentLbl.backgroundColor = [UIColor systemGrayColor];
        _PFcontentLbl.layer.cornerRadius = 16.0f;
        _PFcontentLbl.layer.masksToBounds = YES;
    }
    return _PFcontentLbl;
}
- (UIImageView *)PFarrowImgView{
    if (!_PFarrowImgView) {
        _PFarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PF_arrow_right"]];
    }
    return _PFarrowImgView;
}
@end
