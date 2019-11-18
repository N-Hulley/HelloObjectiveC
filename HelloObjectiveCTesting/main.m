//
//  main.m
//  HelloObjectiveC
//
//  Created by 7077 on 11/11/19.
//  Copyright © 2019 7077. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListManager.h"
void incrementByReference(int *a);
void incrementByValue(int a);
void linkedListExample(void);
void memoryLocationExample(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        linkedListExample();
        
        
    }
    return 0;
}

void linkedListExample() {
    printf("\n\n");
    
    LinkedListManager* manager = [[LinkedListManager alloc] init];
   [manager generatePattern:5 length:10 multiply:3];
    
    for (int i = 0; i < [manager length]; i++) {
        printf("item %i: %i\n", i, [manager get:i]);
    }
}
void memoryLocationExample() {
    int a = 0;
    
    printf("\nmemory location of a: %p\n\n", &a);
    
    incrementByValue(a);
    printf("increment by value: %i\n\n",a);
    
    incrementByReference(&a);
    printf("increment by reference: %i\n\n",a);
}

void incrementByReference(int *a) {
    printf("memory location of a from increment by reference: %p\n", &*a);
    *a = *a + 1;
}

void incrementByValue(int a) {
    printf("memory location of a from increment by value: %p\n", &a);
    a = a + 1;
}
