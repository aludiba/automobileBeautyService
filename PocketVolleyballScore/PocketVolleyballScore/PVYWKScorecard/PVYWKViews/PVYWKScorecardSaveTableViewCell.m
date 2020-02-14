//
//  PVYWKScorecardSaveTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "PVYWKScorecardSaveTableViewCell.h"
@interface PVYWKScorecardSaveTableViewCell()
@property(nonatomic, strong)UIButton *PVYWKsaveButton;//保存按钮
@end
@implementation PVYWKScorecardSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVYWKsaveButton];
        
        [self.PVYWKsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(10);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(44);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
#pragma mark - action
- (void)PVYWKbtnClick{
    if (self.PVYWKScorecardSaveB) {
        self.PVYWKScorecardSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)PVYWKsaveButton{
    if (!_PVYWKsaveButton) {
        _PVYWKsaveButton = [[UIButton alloc] init];
        _PVYWKsaveButton.backgroundColor = [UIColor systemBlueColor];
        [_PVYWKsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVYWKsaveButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _PVYWKsaveButton.layer.cornerRadius = 8.0f;
        _PVYWKsaveButton.layer.masksToBounds = YES;
        [_PVYWKsaveButton addTarget:self action:@selector(PVYWKbtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_PVYWKsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _PVYWKsaveButton;
}
@end
