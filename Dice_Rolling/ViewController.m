//
//  ViewController.m
//  Dice_Rolling
//
//  Created by cao hebing on 13/08/2015.
//  Copyright (c) 2015 Lisa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//first dice number field
@property (weak, nonatomic) IBOutlet UITextField *diceNumberInput;

//result label
@property (weak, nonatomic) IBOutlet UILabel *showResult;

//second dice
@property (weak, nonatomic) IBOutlet UITextField *diceTwoInput;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkDiceNumber:(UIButton *)sender {
    
    NSLog(@"first dice: %@", self.diceNumberInput.text);
    
    NSLog(@"second dice: %@", self.diceTwoInput.text);
    
    NSString *numberOfDice1 = self.diceNumberInput.text;
    
    NSString *numberOfDice2 = self.diceTwoInput.text;
    
    NSArray *diceNumArray = [[NSArray alloc] initWithObjects: numberOfDice1,numberOfDice2, nil];
    
    
    //get integer value from string
    //NSUInteger diceInteger1 = [numberOfDice1 intValue];
    NSUInteger diceInteger1 = [[diceNumArray objectAtIndex:1] intValue];
    
    NSUInteger diceInteger2 = [numberOfDice2 intValue];
    
    
    if ( diceInteger1 >0 && diceInteger1 < 7 &&diceInteger2 >0 && diceInteger2 <7)
    {
        
        NSUInteger totalNumber = diceInteger1 + diceInteger2;
        
        NSString *total = [NSString stringWithFormat:@"%lu", totalNumber];
        
       
        [self.showResult setText:total];
        
    }else{
        
        [self.showResult setText:@"Please Enter 1 - 6"];
        
    }
    
    
    
  /*  //verify the input
    if ( diceInteger > 3 && diceInteger <=6)
    {
        [self.showResult setText:@"Big"];
    }else if (diceInteger >=1 && diceInteger <=3 ){
        
        [self.showResult setText:@"Small"];
        
    }else
    {
        [self.showResult setText:@"Please Enter 1 - 6"];
    }
    
    //[self.diceResult setText:numberOfDice];*/

}

@end
