//
//  TableViewTest.m
//  TableViewTest
//
//  Created by Prempriya on 29/07/17.
//  Copyright © 2017 Prempriya. All rights reserved.
//

#import "TableViewTest.h"
#import "CustomTableViewCell.h"
@interface TableViewTest ()
@property (strong, nonatomic) IBOutlet UITableView *indiaTable;

@end

@implementation TableViewTest
{
    NSArray *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    data= [NSArray arrayWithObjects:@"India. ",@"New Delhi",@"Bihar",@"Patna",@"Darbhanga",@"Kanpur",@"Govindpuri",@"Modinagar",@"U.P.",@"Gujrat",@"Chennai",@"Bihar",@"Patna",@"Darbhanga",@"Kanpur",@"Govindpuri",@"India",@"New Delhi",@"Bihar",@"Patna",@"Darbhanga",nil];
    [_indiaTable registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil]  forCellReuseIdentifier:@"custom"];
    // Do any additional setup after loading the view from its nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}
-(UITableViewCell *)tableView: (UITableView *) tableView cellForRowAtIndexPath:( NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    CustomTableViewCell *cell1 = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"custom"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    if(indexPath.row%2 == 0){
     cell.textLabel.text = [data objectAtIndex:indexPath.row];
     cell.imageView.image = [UIImage imageNamed:@"india.jpg"];
     [cell.contentView.layer setBorderColor:[UIColor blackColor].CGColor];
     [cell.contentView.layer setBorderWidth:1.0f];
    cell.detailTextLabel.text = @"India";
    return cell;
    }
    else
    {
        
        return cell1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView
heightForFooterInSection:(NSInteger)section
{
    return 100.0;
}
- (UIView *)tableView:(UITableView *)tableView
viewForFooterInSection:(NSInteger)section
{
   UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"india.jpg"]];
        return  img;
}
- (CGFloat)tableView:(UITableView *)tableView
heightForHeaderInSection:(NSInteger)section
{
    return 150.0;
}
- (UIView *)tableView:(UITableView *)tableView
viewForHeaderInSection:(NSInteger)section
{
    UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"india.jpg"]];
    return  img;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
