/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

/**
 *
 * @author Buzzi
 */
class Orders {
    
     private int order_id, quantity, prod_id;
    private String prod_name, user_name, status;
    private float price;
    
    public Orders(int order_id, String prod_name, int quantity, float price, String status)
    {
        this.order_id = order_id;
        this.prod_name = prod_name;
        this.status = status;
        this.quantity = quantity;
        this.price = price;
        
    }
    
    public Orders(int order_id, String prod_name, int quantity, float price, String status, int prod_id, String user_name)
    {
        this.order_id = order_id;
        this.prod_name = prod_name;
        this.status = status;
        this.quantity = quantity;
        this.price = price;
        this.prod_id = prod_id;
        this.user_name = user_name;
        
    }


    
    public int getorder_id()
    {
        return order_id;
    }
    
     public String getprod_name()
    {
        return prod_name;
    }
       public String getStatus()
    {
        return status;
    }
     
     public int getquantity()
    {
        return quantity;
    }
     
      public float getprice()
    {
        return price;
    }
      
    public int getprod_id()
    {
        return prod_id;
    }
    
     public String getuser_name()
    {
        return user_name;
    }
}
    

