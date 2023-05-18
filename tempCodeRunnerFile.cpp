#include <iostream>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--){
       int n;
       cin>>n;
       string s;
       cin>>s;
       int m=10000;
       int b;
      for(int i=n-1;i>=0;i--){
         if(s[i]<m){
            m=s[i];
            b=i;
         }
      }
      cout<<s[b];
      for(int i=0;i<n;i++){
        if(i!=b){
            cout<<s[i];
        }
      }
      cout<<endl;



    }
}