#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>
#include <map>

using namespace std;

struct Meeting{int start; int finish; int value;};

void parse_file(vector<Meeting> &meetings, string fileName);
void sort(vector<Meeting> &meetings);
void p_values(vector<Meeting> &meetings, vector<int> &p_vals);
void m_compute_opt(vector<int> &p_vals);

int main() {
    //parse file
    vector<Meeting> meetings;
    parse_file(meetings, "data2.csv");

    //sort meetings
    vector<Meeting> sorted;
    sort(meetings);

    //calculate p-values
    vector<int> p_vals;
    p_vals.reserve(meetings.size());
    for (int i = 0; i < meetings.size(); i++){
        p_vals.push_back(0);
    }
    p_values(meetings, p_vals);

    //Initialization
    map<int,int> M;
    for (int i = 0; i < p_vals.size(); i++){
        M.insert(pair<int, int>(i, -1));
    }
    for (int i = 0; i < p_vals.size(); i++){
        if (p_vals[i] == 0){
            M.insert(pair<int, int>(i, 0));
        }
    }

    //Memoization
    m_compute_opt(p_vals);
    return 0;
}

//Parses file and reads in meeting times and values
void parse_file(vector<Meeting> &meetings, string fileName){
    ifstream file;
    file.open(fileName);
    while(!file.eof()){
        string line;
        string start;
        string finish;
        string value;
        getline(file, line);
        istringstream s(line);
        char input;
        while(s >> input){
            if (input == ','){
                break;
            }else{
                start += input;
            }
        }
        while(s >> input){
            if (input == ','){
                break;
            }else{
                finish += input;
            }
        }
        while(s >> input){
            value += input;
        }
        Meeting new_m = {stoi(start), stoi(finish), stoi(value)};
        meetings.push_back(new_m);
    }
}

//Sorts meetings based on finish time
void sort(vector<Meeting> &meetings){
    vector<Meeting> sorted;
    for(int i = 1; i < meetings.size(); i++) {
        Meeting m = meetings[i];
        int j = i-1;
        while (j >=0 && meetings[j].finish > m.finish) {
            meetings[j+1] = meetings[j];
            j = j - 1;
        }
        meetings[j + 1] = m;
    }
}


//calculates p-values of meetings
void p_values(vector<Meeting> &meetings, vector<int> &p_vals){
    for (int i = meetings.size() - 1; i >= 0; i--){
        for (int j = i - 1; j >= 0; j--){
            int finish = meetings[j].finish;
            int start = meetings[i].start;
            if (meetings[j].finish <= meetings[i].start){
                p_vals[i] = meetings[j].value;
                break;
            }
        }
    }
}

//Memoization
void m_compute_opt(vector<int> &p_vals){

}



