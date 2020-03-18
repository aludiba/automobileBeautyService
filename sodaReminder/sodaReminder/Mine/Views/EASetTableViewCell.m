//
//  EASetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EASetTableViewCell.h"
#import "EASetViewModel.h"
@interface EASetTableViewCell()
@property(nonatomic, strong)UILabel *EAtitleLbl;
@property(nonatomic, strong)UILabel *EAcontentLbl;
@property(nonatomic, strong)UIImageView *EAarrowImgView;
@end
@implementation EASetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.EAtitleLbl];
        [self.contentView addSubview:self.EAcontentLbl];
        [self.contentView addSubview:self.EAarrowImgView];
        
        [self.EAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(EAWIDTH * 0.5);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.EAarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.EAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.EAarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(EAWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(25);
        }];
    }
    return self;
}
- (void)setEAmodel:(EASetViewModel *)EAmodel{
    _EAmodel = EAmodel;
    self.EAtitleLbl.text = _EAmodel.EAtitle;
    self.EAcontentLbl.text = _EAmodel.EAcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)EAtitleLbl{
    if (!_EAtitleLbl) {
        _EAtitleLbl = [[UILabel alloc] init];
        _EAtitleLbl.textColor = [UIColor blackColor];
        _EAtitleLbl.font = [UIFont systemFontOfSize:24];
    }
    return _EAtitleLbl;
}
- (UILabel *)EAcontentLbl{
    if (!_EAcontentLbl) {
        _EAcontentLbl = [[UILabel alloc] init];
        _EAcontentLbl.textAlignment = NSTextAlignmentRight;
        _EAcontentLbl.textColor = [UIColor whiteColor];
        _EAcontentLbl.font = [UIFont boldSystemFontOfSize:25];
    }
    return _EAcontentLbl;
}
- (UIImageView *)EAarrowImgView{
    if (!_EAarrowImgView) {
        _EAarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"EA_arrow_right"]];
    }
    return _EAarrowImgView;
}
@end
