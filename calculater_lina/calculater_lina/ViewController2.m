//
//  ViewController2.m
//  calculater_lina
//
//  Created by Angela on 2018/3/3.
//  Copyright © 2018年 Angela. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UILabel *Price;
@property (weak, nonatomic) IBOutlet UITextField *mealprice;
@property (weak, nonatomic) IBOutlet UITextField *people;
@property (weak, nonatomic) IBOutlet UITextField *tips;
@property (weak, nonatomic) IBOutlet UIButton *pay;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)calculate:(id)sender {
    NSLog(_mealprice.text);
    NSLog(_tips.text);
    NSLog(_people.text);
    [_Price setText:[NSString stringWithFormat:@"%.2f",([_mealprice.text floatValue]*([_tips.text floatValue]+100)*0.01)/[_people.text floatValue]]];
}
@end
