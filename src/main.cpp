#include <bits/stdc++.h>
using namespace std;

enum class TokenType
{
    _return,
    int_lit,
    semi
};

struct Token
{
    TokenType type;
    string value;
};

vector<Token> tokenize(const string& input) {
    vector<Token> tokens;
    string currentToken;

    for (size_t i = 0; i < input.size(); i++) {
        if (input[i] == ' ' || input[i] == '\n' || input[i] == ';') {
            if (!currentToken.empty()) {
                if (currentToken == "return") {
                    tokens.push_back(Token{TokenType::_return, ""});
                } else if (all_of(currentToken.begin(), currentToken.end(), ::isdigit)) {
                    tokens.push_back(Token{TokenType::int_lit, currentToken});
                } else {
                    tokens.push_back(Token{TokenType::_return, currentToken});
                }
                currentToken.clear();
            }
            if (input[i] == ';') {
                tokens.push_back(Token{TokenType::semi, ""});
            }
        } else {
            currentToken += input[i];
        }
    }

    return tokens;
}

string token_to_asm(vector<Token> & tokens){
    stringstream output;
    output<< "global _start\n_start:\n";
    for (size_t i = 0; i < tokens.size() - 2; i++) {
        if (tokens[i].type == TokenType::_return &&
            i + 1 < tokens.size() && tokens[i + 1].type == TokenType::int_lit &&
            i + 2 < tokens.size() && tokens[i + 2].type == TokenType::semi) {
            output<<"   mov rax,60\n";
            output<<"   mov rdi,"<<tokens.at(i+1).value<<"\n";
            output<<"   syscall\n";
        }
    }
    return output.str();
}

int main(int argc, char* argv[]){
    if(argc!=2){
        cerr<<"Incorrect usage. Correct usage is ...."<<endl;
        cerr<<" comp ./input_file.sex"<<endl;
        return EXIT_FAILURE;
    }


    fstream input(argv[1],ios::in);
    string contents;
    {
        stringstream contentstream;
        contentstream << input.rdbuf();
        contents = contentstream.str();
    }
    vector<Token> token= tokenize(contents);
 ;

    {
        fstream output("out.asm",ios::out);
        output<< token_to_asm(token);
    }
    system("nasm -felf64 out.asm");
    system("ld out.o -o out");
    system("./out");

    return EXIT_SUCCESS;
}