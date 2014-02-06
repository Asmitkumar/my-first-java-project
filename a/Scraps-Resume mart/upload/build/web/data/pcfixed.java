








class Q
{
  int n;
  boolean valueSet=false;
  synchronized  int get()
	{
	  while(!valueSet)
		  try
		  {
			wait();
		  }
		  catch (InterruptedException e)
		 {
		
		  System.out.println("exception of thread"+e);
		  }
		  System.out.println("got:"+n);
		  valueSet=false;
		  notify();
		  return n;
	}
	synchronized void put(int n)
	{
		 while(valueSet)
		  try
		  {
			wait();
		  }
		  catch (InterruptedException e)
		 {
		
		  System.out.println("exception of thread"+e);
		  }
		  this.n=n;
		  valueSet=true;
		  System.out.println("put:"+n);
		  notify();
	}
}
class producer implements Runnable
{
	Q q;
  producer(Q q)
	{
	  this.q=q;
	  new Thread(this ,"producer").start();
	}
	  public void run()
	{
		  int i=0;
		  while(true)
		{
			  q.put(i++);
		}
	}
}
class customer implements Runnable
{
	Q q;
	customer(Q q)
	{
		this.q=q;
		new Thread(this,"customer").start();
	}
	public void run()
	{
		while(true)
		{
			q.get();
		}
	}
}
class pcfixed
{
	public static void main(String a[])
	{
		Q q=new Q();
		new producer(q);
		new customer(q);
		System.out.println("press control -c to stop");
	}
}
