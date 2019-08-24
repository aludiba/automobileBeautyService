//
//  ABSetTableViewCell.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABSetTableViewCell.h"
#import "ABSetModel.h"
@interface ABSetTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@property(nonatomic, strong)UIImageView *arrowImgView;
@end
@implementation ABSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = ABH_Color(15, 18, 39, 1);
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.arrowImgView];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(15);
            make.trailing.equalTo(self.contentLbl.mas_leading).offset(-5);
            make.height.mas_equalTo(20);
        }];
        [self.arrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.arrowImgView.mas_leading).offset(-10);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(90);
            make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setModel:(ABSetModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    if (_model.type == ABSetCellTypeLoginOut) {
        self.arrowImgView.hidden = YES;
    }else{
        self.arrowImgView.hidden = NO;
    }
    if (_model.type == ABSetCellTypeContent) {
        self.contentLbl.text = _model.content;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.font = [UIFont systemFontOfSize:17];
        _titleLbl.textColor = [UIColor greenColor];
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.font = [UIFont systemFontOfSize:17];
        _contentLbl.textColor = [UIColor whiteColor];
        [_contentLbl sizeToFit];
        _contentLbl.textAlignment = NSTextAlignmentRight;
    }
    return _contentLbl;
}
- (UIImageView *)arrowImgView{
    if (!_arrowImgView) {
        _arrowImgView = [[UIImageView alloc] init];
        _arrowImgView.image = [UIImage imageNamed:@"ad_arrow"];
    }
    return _arrowImgView;
}
@end
