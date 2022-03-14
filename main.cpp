#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>
#include <map>

using namespace std;

struct Task{int start; int finish; int value;};
vector<Task> tasks;
vector<int> p_vals;
map<int,int> M;


void parse_file(const string& fileName);
void sort();
void p_values();
int m_compute_opt(int n);
void find_solution(int n);


int main() {
    //get input
    string file;

    cout << "Please choose a data file: data.csv or data2.csv" << endl;
    cin >> file;

    //parse file
    parse_file(file);

    //sort tasks
    sort();

    //calculate p-values
    p_vals.reserve(tasks.size());
    for (int i = 0; i < tasks.size(); i++){
        p_vals.push_back(0);
    }
    p_values();


    //Memoization
    for (int i = 0; i <= tasks.size(); i++){
        M[i] = -1;
    }
    m_compute_opt(tasks.size());
    cout << "The optimal weight is: " << M[tasks.size()] << endl;

    //Solution
    cout << "Optimal solution includes:" << endl;
    find_solution(tasks.size());
    return 0;
}

//Parses file and reads in task times and values
void parse_file(const string& fileName){
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
        Task new_t = {stoi(start), stoi(finish), stoi(value)};
        tasks.push_back(new_t);
    }
}

//Sorts tasks based on finish time
void sort(){
    vector<Task> sorted;
    for(int i = 1; i < tasks.size(); i++) {
        Task t = tasks[i];
        int j = i-1;
        while (j >=0 && tasks[j].finish > t.finish) {
            tasks[j + 1] = tasks[j];
            j = j - 1;
        }
        tasks[j + 1] = t;
    }
}


//calculates p-values of tasks
void p_values(){
    for (int i = tasks.size() - 1; i >= 0; i--){
        for (int j = i - 1; j >= 0; j--){
            if (tasks[j].finish <= tasks[i].start){
                p_vals[i] = tasks[j].value;
                break;
            }
        }
    }
}

//Memoization
int m_compute_opt(int n){
    if (n == 0){
        return 0;
    } else if (M[n] != -1){
        return M[n];
    }else {
        M[n] = max(tasks[n - 1].value + m_compute_opt(p_vals[n - 1]), m_compute_opt(n - 1));
    }
    return M[n];
}

//Solution
void find_solution(int n){
    if (n ==0){
        cout << "" << endl;
    }else if (tasks[n - 1].value + M[p_vals[n - 1]] > M[n - 1]){
        cout << "Task " << n << endl;
        find_solution(p_vals[n-1]);
    }else{
        find_solution(n-1);
    }
}



