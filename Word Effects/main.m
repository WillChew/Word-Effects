//
//  main.m
//  Word Effects
//
//  Created by Will Chew on 2018-06-04.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // 255 unit long array of characters
        char inputChars[255];
        char number[255];
        int operation = 0;
        
        while (TRUE) {
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            NSLog(@"input a number (1-10): ");
            
            
            fgets(number, 255, stdin);
            operation = atoi(number);
            
            
            //6 for part 2, 10 for part 3
            while (operation > 10) {
                NSLog(@"Invalid number, input number from 1-10");
                fgets(number, 255, stdin);
                operation = atoi(number);
            }
            
            
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            NSLog(@"The operation is %d", operation);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
            
            //Different cases (operations 1-6)
            NSString *uppercase = [inputString uppercaseString];
            NSString *lowercase = [inputString lowercaseString];
            int numberString = [inputString intValue];
            NSString *canadian = [inputString stringByAppendingString:@", eh?"];
            NSString *despace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSString *noSpace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@""];
            NSInteger count = [noSpace length] - 1;
            
            
            
            switch (operation) {
                case 1:
                    NSLog(@"%@", uppercase);
                    break;
                case 2:
                    NSLog(@"%@", lowercase);
                    break;
                case 3:
                    if (numberString != 0) {
                        NSLog(@"%d", numberString);
                    } else {
                        NSLog(@"Does not work, not a valid int value");
                    }
                    break;
                case 4:
                    NSLog(@"%@", canadian);
                    break;
                case 5:
                    if ([inputString containsString:@"?"]){
                        NSLog(@"I don't know");
                    }
                    if ([inputString containsString:@"!"]){
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                case 6:
                    NSLog(@"%@", despace);
                    break;
                case 7:
                    NSLog(@"%@", noSpace);
                    break;
                case 8:
                    NSLog(@"your word is: %@ and it is %ld letters long", inputString, (long)count);
                    break;
            
                    
            }
        }
    }
    return 0;
}
