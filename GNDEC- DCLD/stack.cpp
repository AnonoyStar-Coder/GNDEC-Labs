#include<iostream>
#define MAX 100
using namespace std;

int stack[MAX];
int top = -1;

void push(int val) {
    if (top >= MAX - 1) {
        cout << "Stack Overflow" << endl;
    } else {
        top++;
        stack[top] = val;
    }
}

void pop() {
    if (top <= -1) {
        cout << "Stack Underflow" << endl;
    } else {
        cout << "The popped element is " << stack[top] << endl;
        top--;
    }
}

void display() {
    if (top >= 0) {
        cout << "Stack elements are:";
        for (int i = top; i >= 0; i--){
            cout << stack[i] << " ";
        }
        cout << endl;
    } else {
        cout << "Stack is empty" << endl;
    }
}

int main() {
    push(10);
    push(20);
    push(30);
    display();
    pop();
    display();
    return 0;
}
