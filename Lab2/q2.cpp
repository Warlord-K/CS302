#include <bits/stdc++.h>
#include <fstream>

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
    // Read a file and classify each word as keyword or identifier or operator
    ifstream fin;
    cout << "Enter file name:" << endl;
    string filename;
    cin >> filename;
    fin.open(filename);
    string s;
    while(fin >> s){
        if(isKeyword(s))    cout << s << " is a keyword\n";
        else if(isIdentifier(s))    cout << s << " is an identifier\n";
        else    cout << s << " is an operator\n";
    }
    return  0;
}