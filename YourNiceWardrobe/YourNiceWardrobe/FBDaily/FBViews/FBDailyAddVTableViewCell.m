//
//  FBDailyAddVTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBDailyAddVTableViewCell.h"
#import "FBDailyAddModel.h"
@interface FBDailyAddVTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *FBeditableView;
@property(nonatomic, strong)UILabel *FBhiddenLbl;
@end

@implementation FBDailyAddVTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.FBeditableView];
        [self.FBeditableView addSubview:self.FBhiddenLbl];
        
        [self.FBeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(176);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(-12);
        }];
        [self.FBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBeditableView).offset(6);
            
            make.leading.equalTo(self.FBeditableView).offset(6);
            make.trailing.equalTo(self.FBeditableView);
            make.height.mas_equalTo(18);
        }];
    }
    return self;
}
- (void)setFBViewModel:(FBDailyAddModel *)FBViewModel{
    _FBViewModel = FBViewModel;
    if ([_FBViewModel.FBDefault length]) {
        self.FBhiddenLbl.text = _FBViewModel.FBDefault;
    } else {
        self.FBhiddenLbl.text = @"";
    }
    if (_FBViewModel.FBContent.length) {
        self.FBeditableView.text = _FBViewModel.FBContent;
        self.FBhiddenLbl.hidden = YES;
    } else {
        self.FBeditableView.text = @"";
        self.FBhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.FBhiddenLbl.hidden = NO;
    } else {
        self.FBhiddenLbl.hidden = YES;
    }
    CGRect FBbounds = textView.bounds;
    CGSize FBsize = [self.FBeditableView sizeThatFits:CGSizeMake(FBbounds.size.width, MAXFLOAT)];
    FBbounds.size = FBsize;
    textView.bounds = FBbounds;
    self.FBViewModel.FBContent = textView.text;
    self.FBcontentHeight = FBsize.height;
    if (self.FBcontentHeight > 176) {
        if (self.FBeditBlock) {
            self.FBeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.FBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)FBhiddenLbl{
    if (!_FBhiddenLbl) {
        _FBhiddenLbl = [[UILabel alloc] init];
        _FBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _FBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _FBhiddenLbl;
}
- (UITextView *)FBeditableView{
    if (!_FBeditableView) {
        _FBeditableView = [[UITextView alloc] init];
        _FBeditableView.layer.cornerRadius = 8.0f;
        _FBeditableView.layer.masksToBounds = YES;
        _FBeditableView.backgroundColor = FBH_Color(242, 242, 242, 1);
        _FBeditableView.delegate = self;
        _FBeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:20];
        _FBeditableView.textColor = [UIColor blackColor];
        _FBeditableView.scrollEnabled = NO;
        [_FBeditableView sizeToFit];
    }
    return _FBeditableView;
}
@end
