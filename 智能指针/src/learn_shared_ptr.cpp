#include <iostream>
#include <memory>
using namespace std;

class XData
{
    public:
        XData()
        {
            cout <<":create XData" << endl;

        }
        ~XData()
        {
            cout <<":drop XData" << endl;

        }
        int index1 = 0;
        int index2 = 0;
};

void DelData(XData* p)
{
    cout << "call DelData. " << endl;
    delete p;
}

int main(int argc, char *argv[])
{      
    {
    //初步使用
    shared_ptr<int> sp1(new int);
    shared_ptr<int[]> sp2(new int[1024]);
    *sp1 = 10;
    sp2[0] = 100;
    auto d1 = sp1.get();
    auto sp3 = make_shared<XData>();
    cout << "sp3.use_count() is " << sp3.use_count() << endl;

    //可复制构造和复制赋值
    auto sp4 = sp3;
    cout << "after sp4 = sp3, sp3.use_count() is " << sp3.use_count() << endl;
    cout << "after sp4 = sp3, sp4.use_count() is " << sp4.use_count() << endl;

    auto sp5 = make_shared<XData>();
    sp4 = sp5; 
    cout << "after sp4 = sp5, sp3.use_count() is " << sp3.use_count() << endl;

    {
        auto sp6 = sp3;
        cout << "in brace, sp6 = sp3, sp3.use_count() is " << sp3.use_count() << endl;
    }
    cout << "out brace, sp6 = sp3, sp3.use_count() is " << sp3.use_count() << endl;
    sp3.reset(); //-1，如果引用计数为0，则清理空间
    cout << "after sp3.reset(), sp3.use_count() is " << sp3.use_count() << endl;
    }
    cout << "after entire scope. " << endl;

    //shared_ptr定制删除函数
    {
        shared_ptr<XData> sp7(new XData, DelData); // 函数指针
        shared_ptr<XData> sp8(new XData, [](auto p){
            cout << "call delete lambda. " << endl;
            delete p;
            });
    } 
    cout << "after delete }" << endl;

    //shared_ptr指向同一个对象的不同成员
    shared_ptr<XData> sc1(new XData);
    cout << "sc1 sue_count() is " << sc1.use_count() << endl;
    shared_ptr<int> sc2(sc1, &sc1->index2);
    shared_ptr<int> sc3(sc1, &sc1->index1);
    cout << "sc1 sue_count() is " << sc1.use_count() << endl;

    return 0;
}
