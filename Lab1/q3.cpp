#include <bits/stdc++.h>

using namespace std;

int main(){
    cout << "Enter String (aA-zZ): \n";
    string s = "";
    getline(cin, s);
    while(s[0] == ' '){
        s.erase(0, 1);
    }
    while(s[s.length() - 1] == ' '){
        s.erase(s.length() - 1, 1);
    }
    if(s[0] == '/' && s[1] == '/' || s[0] == '/' && s[1] == '*' && s[s.length() - 2] == '*' && s[s.length() - 1] == '/'){
        cout << "Comment\n";
    }
    else{
        cout << "Not a comment\n";
    }
    return 0;
}