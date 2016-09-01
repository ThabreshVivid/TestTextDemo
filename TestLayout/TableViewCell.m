//
//  TableViewCell.m
//  TestLayout
//
//  Created by Thabresh on 9/1/16.
//  Copyright © 2016 VividInfotech. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
      self.txtView.delegate = self;
    // Initialization code
}
-(void)textViewDidChange:(UITextView *)textView{
    CGSize size = [textView sizeThatFits:CGSizeMake(CGRectGetWidth(self.frame), CGFLOAT_MAX)];
    CGFloat height = size.height;
    if (height < 50) {
        self.heightConstraint.constant = 50;
    }else{
        self.heightConstraint.constant = height;
    }
    [self.tableView beginUpdates];
    [self.tableView endUpdates];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
