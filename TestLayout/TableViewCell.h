//
//  TableViewCell.h
//  TestLayout
//
//  Created by Thabresh on 9/1/16.
//  Copyright © 2016 VividInfotech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightConstraint;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak,nonatomic)UITableView * tableView;
@end
