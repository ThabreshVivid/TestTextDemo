//
//  ViewController.m
//  TestLayout
//
//  Created by Thabresh on 9/1/16.
//  Copyright © 2016 VividInfotech. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import <CoreImage/CoreImage.h>
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *txtTbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    [self.txtTbl registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    self.txtTbl.estimatedRowHeight = 51;
    self.txtTbl.rowHeight = UITableViewAutomaticDimension;
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    cell.tableView = self.txtTbl;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  UITableViewAutomaticDimension;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
