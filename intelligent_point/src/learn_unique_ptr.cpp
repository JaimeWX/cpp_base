#include <iostream>
#include <memory>
using namespace std;

class Data
{
    public:
        static int count;
        int index = 0;
        Data()
        {   
            count++;
            index = count;
            cout << index <<":create data" << endl;
        }
        ~Data()
        {
            cout << index << ":drop data" << endl;
        }
};

struct XPacket
{
    unsigned char* data = nullptr;
    int size = 0;

};

class PacketDelete
{
    public:
        void Close()
        {
            cout << "call PacketDelete Close." << endl;
        }
        void operator()(XPacket*p) const //const表示在此函数中不去修改对应的内容
        {
            cout << "call PacketDelete()." << endl;
            delete p->data;
            delete p;
        }
};

int Data::count = 0; 

int main(int argc, char *argv[])
{   
    //unique_ptr 初始化
    { //出作用域就会被释放
        unique_ptr<int> p1(new int);
        cout << "===1===" << endl;
        unique_ptr<Data> p2(new Data); //初始化方法1
        auto p3 = make_unique<Data>(); //初始化方法2

        //空智能指针
        unique_ptr<Data> p4;

        unique_ptr<int[]> pa1 = make_unique<int []>(1024);
        unique_ptr<int[]> pa2(new int[1024]);
        unique_ptr<Data[]> pa3(new Data[3]);

        //unique_ptr访问和移动构造赋值
        *p1 = 10;
        cout << "p1 is " << *p1 << endl;
        cout << "(*p2).index  is " << (*p2).index << endl; //访问方法1
        cout << "p2->index is " << p2->index << endl; //访问方法2

        auto d1 = new Data();
        unique_ptr<Data> p5(d1);
        cout << "p5 address is " << p5.get() << endl;
        cout << "d1 address is " << d1 << endl;

        pa2[0] = 1;
        pa2[1] = 100;
        cout << "pa3[0].index is " << pa3[0].index << endl;
        cout << "pa3[1].index is " << pa3[1].index << endl; //访问方法1
        cout << "pa3.get()[1].index is " <<  pa3.get()[1].index << endl;//访问方法2

        //重置和移动内存资源
        //unique_ptr不可复制构造，也不可以赋值
        //unique_ptr支持移动构造
        unique_ptr<Data> p6(new Data());
        unique_ptr<Data> p7 = move(p6); //p6释放所有权，转移到p7
        //unique_ptr支持移动赋值
        unique_ptr<Data> p8(new Data());
        p7 = move(p8);
        //重置空间，原空间清理
        p7.reset(new Data());

        //释放所有权和自定义空间删除方法
        cout << "before p7 = nullptr" << endl;
        //主动释放空间
        p7 = nullptr;
        cout << "after p7 = nullptr" << endl;
        //释放所有权
        unique_ptr<Data> p9(new Data);
        auto ptr9 = p9.release();
        delete ptr9;
        //自定义空间删除方法
        unique_ptr<XPacket,PacketDelete> pd1(new XPacket);
        unique_ptr<XPacket,PacketDelete> pd2(new XPacket);
        pd2.get_deleter().Close();
        pd2.get_deleter()(pd2.get());
        pd2.release();
    }
        cout << "===2===" << endl;
    return 0;
}
