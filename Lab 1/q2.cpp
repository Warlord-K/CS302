#include <bits/stdc++.h>

using namespace std;

int main(){
    string s;
    cout << "Enter String: \n";  
    cin >> s;
    unordered_set<string> keywords = {"auto","break","case","char","const","continue","default","do","double","else","enum","extern","float","for","goto","if","int","long","register","return","short","signed","sizeof","static","struct","switch","typedef","union","unsigned","void","volatile","while"};
    if(keywords.find(s) != keywords.end())  cout << "It is a Keyword in C!" << endl;
    else cout << "It is not a Keyword in C." << endl;
    return  0;
}