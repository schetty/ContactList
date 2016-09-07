//
//  main.m
//  ContactListRedo
//
//  Created by naomi schettini on 2016-09-06.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [InputCollector new];
        ContactList *listOfContacts = [ContactList new];
        
//        NSMutableArray *listOfContacts = [NSMutableArray new];

        NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
        NSLog(@"Hi, %@", usernameInput);
        
        NSString *menu = [inputCollector inputForPrompt:@"What would you like to do? \n 'new' for new contact \n 'view' to view contacts \n 'quit' to quit"];

        
        do {
            
            if ([menu isEqualToString:@"new"]) {
                
                Contact *newContact = [Contact new];
                NSString *name = [inputCollector inputForPrompt:@"Enter Contact Name:"];
                NSString *number = [inputCollector inputForPrompt:@"Enter Contact Number:"]; 
                NSString *location = [inputCollector inputForPrompt:@"Enter Contact Location:"];
                newContact.name = name;
                newContact.number = number;
                newContact.location = location;
                
                [listOfContacts addContact:newContact];
                

                
                NSLog(@"Contact Stored");

                
            }
            
            else if ([menu isEqualToString:@"view"]) {
                for (Contact *contacts in listOfContacts.listOfContacts)
                    NSLog(@"# %d : %@", contacts.number, contacts.name);
                
            }
            
            
            menu = [inputCollector inputForPrompt:@"What would you like to do? \n 'new' for new contact \n 'view' to view contacts \n 'quit' to quit"];

            
        }
        
        while (![menu isEqualToString: @"quit"]);
        
    }
    
    
    
    return 0;
}



