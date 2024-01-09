#include <bits/stdc++.h>

using namespace std;

int main(){
    string s = "";
    cout << "Enter Line: \n";
    string x;
    while(cin){
        cin >> x;
        s += x;
    }
    // s = ltrim(s);
    cout << s << endl;
    if (s.substr(0,2) == "//" || s.substr(0,2) == "/*") cout << "This line is a comment in C!" << endl;
    else cout << "This line is not a comment in C." << endl;
    return 0;
}