







class A
{
	 synchronized void foo(B b)
	{
		String name=Thread.currentThread().getName();
		 System.out.println(name+":=="+"entered A.foo()::");
		 try
		 {
			 Thread.sleep(1000);
			 }
			 catch (Exception e)
		 {
		System.out.println("Exception:=="+e);
		 }
		 System.out.println(name+"trying to call B.Last()");
		 b.last();
	}
	synchronized  void last()
	{
		System.out.println("inside A.last()");
	}
}
class B
{
synchronized void bar(A a)
	{
	String name=Thread.currentThread().getName();
System.out.println(name+":=="+"entered b.Bar()::");
try
{
	Thread.sleep(1000);
}
catch (Exception e)
{
System.out.println("exception:=="+e);
}
System.out.println(name+"trying to call AS.last()");
a.last();
	}
	synchronized  void last()
	{
		System.out.println("inside a.last()");
	}
}
class deadlock implements Runnable
{
 A a=new A();
 B b=new B();
    deadlock()
	{
	 Thread.currentThread().setName("MainTHread");
	 Thread t=new Thread(this,"RacingTHread");
	 t.start();
	 a.foo(b);
	 System.out.println("back in main Thread");
	}
	public void run()
	{
		b.bar(a);
		System.out.println("back in other thread");
	}
	public static void main(String a[])
	{
		 new deadlock();
	}
}



