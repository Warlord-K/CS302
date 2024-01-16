#include <bits/stdc++.h>

using namespace std;

bool isKeyword(string s){
    unordered_set<string> keywords = {"auto","break","case","char","const","continue","default","do","double","else","enum","extern","float","for","goto","if","int","long","register","return","short","signed","sizeof","static","struct","switch","typedef","union","unsigned","void","volatile","while"};
    if(keywords.find(s) != keywords.end())  return true;
    return false;
}

bool isIdentifier(string s){
    if(isdigit(s[0]))   return false;
    for(int i=0;i<s.length();i++){
        if(!isalnum(s[i]) && s[i] != '_')   return false;
    }
    return true;
}

int main(){
    string s;
    cout << "Enter String (aA-zZ): \n";
    cin >> s;
    if(isKeyword(s))    cout << "Keyword\n";
    else if(isIdentifier(s))    cout << "Identifier\n";
    else    cout << "Not a Keyword or Identifier\n";
    return  0;
}