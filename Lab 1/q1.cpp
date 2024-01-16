#include <bits/stdc++.h>

using namespace std;

int main(){
    cout << "Enter String (aA-zZ): \n";  
    string s = "";
    getline(cin, s);
    int v = 0, c = 0;
    for (auto a: s){
        if (a == ' '){
            continue;
        }
        a = tolower(a);
        if(a == 'a' || a == 'e' || a == 'i' || a == 'o' || a == 'u'){
            v++;
        }else{
            c++;
        }
    }
    cout << "Number of Vowels: " << v << ", Number of Consonants: " << c << endl;
    return  0;
}