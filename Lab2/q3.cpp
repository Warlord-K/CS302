#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(){
    ifstream fin;
    cout << "Enter file name:" << endl;
    string filename;
    cin >> filename;
    fin.open(filename);
    string s;
    int lines = 0, spaces = 0, characters = 0;
    while(getline(fin,s)){
        lines++;
        for(int i=0;i<s.length();i++){
            if(s[i] == ' ') spaces++;
            else characters++;
        }
    }
    cout << "Lines: " << lines << "\nSpaces: " << spaces << "\nCharacters: " << characters << "\n";
    return  0;
}