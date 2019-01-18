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
class Prodcuts {
    private int prod_id, quantity;
    private String prod_name;
    private float price;
    
    public Prodcuts(int prod_id, String prod_name, int quantity, float price)
    {
        this.prod_id = prod_id;
        this.prod_name = prod_name;
        this.quantity = quantity;
        this.price = price;
        
    }
    
    public int getprod_id()
    {
        return prod_id;
    }
    
     public String getprod_name()
    {
        return prod_name;
    }
     
     public int getquantity()
    {
        return quantity;
    }
     
      public float getprice()
    {
        return price;
    }
}
