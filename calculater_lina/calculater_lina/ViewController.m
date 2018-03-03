//
//  ViewController.m
//  calculater_lina
//
//  Created by Angela on 2018/3/3.
//  Copyright © 2018年 Angela. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *eatwhat;
@property (weak, nonatomic) IBOutlet UILabel *count;
@property (nonatomic) int cnt;@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnPress:(id)sender {
    _cnt = _cnt + 1;
    [_count setText:[NSString stringWithFormat:@"%i", _cnt]];
    if ([_eatwhat.text isEqualToString:@"吃飯好了"]) {
        [_eatwhat setText:@"還是吃麵好了"];
    } else {
        [_eatwhat setText:@"吃飯好了"];
    }
}
- (IBAction)next:(id)sender {
    ViewController2 *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ViewController2"];
    [[self navigationController]pushViewController:vc animated:YES];
}

@end

