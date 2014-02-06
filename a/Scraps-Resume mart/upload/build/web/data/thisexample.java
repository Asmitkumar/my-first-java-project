class thisexample  
{
   int y=1;
   int x=1;
   public void get(int x,int y)
	{
	   this.x=x;
	  this.y=y;
	   System.out.println("value of x:=="+x);
	   System.out.println("value of y:=="+y);
    }
	
	public static void main(String[] args) 
	{
		thisexample tt=new thisexample();
		tt.get(9,8);
	}
}
