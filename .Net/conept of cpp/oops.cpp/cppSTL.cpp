#include<iostream>
#include<array>
#include<vector>
#include<deque>
#include<string>
using namespace std;
//namespace used for to declare scope
// namespace v{    
//     int i=5;
//     int getvalue(){
//         return i*5;
//     }
// }
// using namespace v;
struct stud
{ public:
    int ID;
    string name;
    double d;
    char x;
    stud( id, stud_name, fee, add){
        ID=id;
        name= stud_name;
        d=fee;
        x=add;
    }
};

int main()
{   //🎈array in stl🎈
    // int basic[3]={1,2,3};
    // array<int, 2> a={1,3};
    // int size=a.size();
    // for (int i = 0; i < a.size(); i++)
    // {
    //     cout<<a[i]<<endl;
    // }
    // cout<<"2nd index element:"<<a.at(1)<<endl;
    // cout<<"front element:"<<a.front()<<endl;
    // cout<<"back element:"<<a.back()<<endl;
    //🧨🧨vector🎇🎇
    // vector<char> a(3,'z');
    // a.push_back('b');
    // a.push_back('v');
    // cout<<"element before pop_back->"<<endl;
    // for (char i :a)
    // {
    //     cout<<"vector elment while assigning the size->"<<i<<"\n";
    // }
    // a.pop_back();
    // cout<<"vector element after pop_bck"<<endl;
    // for (char i :a)
    // {
    //     cout<<i<<endl;
    // }
    // cout<<"front vector element: f"<<a.front()<<endl;
    // cout<<"back element: "<<a.back()<<endl;
    // cout<<"element at 2nd index: "<<a.at(2);
    // a.clear();
    // cout<<"after clear fuction:";
    // for(char i:a)
    // {
    //     cout<<i;
    // }
    
    // // cout<<"capacity->"<<a.capacity()<<"\n";
    // cout<<"size->"<<a.size()<<"\n";
    // a.push_back('a');
    // cout<<"capacity->"<<a.capacity()<<"\n";
    // a.push_back('b');
    // cout<<"capacity->"<<a.capacity()<<"\n";
    // a.push_back('h');
    // cout<<"capacity->"<<a.capacity()<<"\n";
    // cout<<"size->"<<a.size()<<"\n";
    // for (char i=0; i<a.size(); i++)
    // {
    //     cout<<" vactors elements :"<<a[i]<<"\n";
    // }
    //😎😎deque😎😎
    // deque<char> c;
    //  c.push_back('b');
    //  c.push_front('a');
    //  c.push_front('d');
    //  c.push_back('a');
    //  cout<<"elements  deque"<<endl;
    //  for (char i :c)
    //  {
    //      cout<<i<<endl;
    //  }
    //  c.pop_back();
    //  cout<<"after pop_back:"<<endl;
    //  for (char i:c)
    //  {
    //      cout<<i<<endl;
    //  }
    //  c.pop_front();
    //   cout<<"after pop_front:"<<endl;
    //  for (char i:c)
    //  {
    //      cout<<i<<endl;
    //  }
    //  cout<<"front element->"<<c.front()<<endl;
    //  cout<<"back element->"<<c.back()<<endl;
    //  cout<<"empty or not->"<<c.empty()<<endl;
    //  cout<<"size before erase->"<<c.size()<<endl;
    //  c.erase(c.begin(),c.begin()+2);
    // cout<<"after erase size and element->"<<c.size()<<endl;
    // for (char i : c)
    // {
    //     cout<<i<<endl;
    // }
    // int i=2;
    
    //  cout<<i<<endl;// print 2
    // cout<<v::i<<endl; print 
    stud st=new stud( 2, "jk", 17, " ");
    // st.name ="Vaishnavi";
    
    
}