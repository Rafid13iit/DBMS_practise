#include <bits/stdc++.h>
#include <fstream>

using namespace std;

// Define a B+ tree as a map
map<string, string> bPlusTree;

// Function to load data from a file into the B+ tree
void loadFromFile(const string& filename) {
    ifstream file(filename);
    if (!file) {
        cout << "File not found." << endl;
        return;
    }

    string key, value;
    while (file >> key) {
        getline(file, value);
        bPlusTree[key] = value;
    }

    file.close();
}

int main() {
    string filename = "words.txt";
    loadFromFile(filename);

    cout << "B+ Tree has been loaded with data from " << filename << endl;

    string searchKey;
    while (true) {
        cout << "Enter a word to search (X to terminate): ";
        cin >> searchKey;
        if (searchKey == "X" || searchKey == "x") {
            break;
        }

        auto it = bPlusTree.find(searchKey);
        if (it != bPlusTree.end()) {
            cout << searchKey << ": " << it->second << endl;
        } else {
            cout << "No word found" << endl;
        }
    }

    return 0;
}

